import requests
from bs4 import BeautifulSoup
import re
import json
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.ui import Select
from datetime import timedelta , datetime
path = "chromedriver.exe"
from selenium import webdriver
from rahasia import hehe
import mysql.connector

#Koneksi DB
host, user, password, database = hehe.koneksidb()
conn = mysql.connector.connect(
    host=host,
    user=user,
    password=password,
    database=database
)

# con = mysql.connector.connect(mydb)
cursor = conn.cursor()

driver = webdriver.Chrome()
driver.get("https://simora.bmkg.go.id/simora/web/login_page")
username ,  password = hehe.simoraPass()

try:
    cek = WebDriverWait(driver,10).until(
        EC.presence_of_element_located((By.NAME,"login"))
    )
    driver.find_element("name", "username").send_keys(username)
    driver.find_element("name", "password").send_keys(password)
    driver.find_element("name", "login").click()
except:
    driver.close()

driver.get("https://simora.bmkg.go.id/simora/simora_upt/harian_acc/NKA02-2025-02-Intensitymeter%20P-Alert+")
html = driver.page_source

# # URL halaman web yang mengandung variabel `ar`
# url = "https://example.com"  # Ganti dengan URL asli
#
# # Ambil konten halaman
# response = requests.get(url)
# soup = BeautifulSoup(response.text, "html.parser")
soup = BeautifulSoup(html, "html.parser")
# Cari semua elemen <script>
script_tags = soup.find_all("script")

# Cari script yang mengandung variabel 'ar'
ar_data = None
for script in script_tags:
    if "var ar =" in script.text:
        match = re.search(r"var ar = (\{.*?\});", script.text, re.DOTALL)
        if match:
            ar_data = match.group(1)
            break

# Jika data ditemukan, ubah menjadi dictionary Python
if ar_data:
    ar_dict = json.loads(ar_data)
    print("Data AR ditemukan:")
    print(ar_dict)
else:
    print("Data AR tidak ditemukan.")

ar_sorted = dict(sorted(ar_dict.items(), key=lambda x: int(x[0])))

# Pastikan semua tanggal dari 1 sampai 31 ada dalam dictionary
for day in range(1, 32):  # 1 sampai 31
    day_str = str(day)
    if day_str not in ar_sorted:
        ar_sorted[day_str] = '0.0'  # Isi nilai kosong dengan 0.0

# Sort agar sesuai urutan tanggal (penting untuk query SQL)
ar_sorted = dict(sorted(ar_sorted.items(), key=lambda x: int(x[0])))

# Menampilkan hasil
print("AR Sorted", ar_sorted)



# Data tambahan yang perlu disimpan
kode_site = "NKA02"  # Ganti dengan kode site yang sesuai
jenis_peralatan = "Seismometer"
tahun = 2025
bulan = 2

## Tambahkan backticks (`) pada nama kolom yang berupa angka
columns = ", ".join([f"`{col}`" for col in ar_sorted.keys()])
placeholders = ", ".join(["%s"] * len(ar_sorted))

# Query untuk insert data
query = f"""
INSERT INTO data_availability 
(id, kode_site, jenis_peralatan, tahun, bulan, {columns})
VALUES (NULL, %s, %s, %s, %s, {placeholders})
"""

# Eksekusi query
values = (kode_site, jenis_peralatan, tahun, bulan, *ar_sorted.values())
cursor.execute(query, values)

# Commit perubahan dan tutup koneksi
conn.commit()
cursor.close()
conn.close()

print("Data berhasil disimpan ke database!")