import mysql.connector

# Data hasil scraping yang tidak lengkap
ar_sorted = {
    '1': '0.0', '2': '0.0', '4': '0.0', '5': '0.0', '6': '0.0', '7': '0.0',
    '8': '0.0', '9': '0.0', '10': '0.0', '11': '0.0', '12': '0.0', '13': '0.0',
    '14': '0.0', '15': '0.0', '16': '0.0', '17': '0.0', '18': '0.0', '19': '0.0',
    '20': '0.0', '21': '0.0', '22': '0.0', '23': '62.41', '24': '99.68',
    '25': '99.81', '26': '99.75', '27': '99.48', '28': '99.65', '29': '99.61',
    '30': '90.08', '31': '20.21'
}

# Pastikan semua tanggal dari 1 sampai 31 ada dalam dictionary
for day in range(1, 32):  # 1 sampai 31
    day_str = str(day)
    if day_str not in ar_sorted:
        ar_sorted[day_str] = '0.0'  # Isi nilai kosong dengan 0.0

# Sort agar sesuai urutan tanggal (penting untuk query SQL)
ar_sorted = dict(sorted(ar_sorted.items(), key=lambda x: int(x[0])))

# Konfigurasi koneksi ke database MySQL
db_config = {
    "host": "localhost",
    "user": "root",  # Ganti dengan username MySQL kamu
    "password": "",  # Ganti dengan password MySQL kamu
    "database": "sla_ola"  # Ganti dengan nama database kamu
}

# Koneksi ke database
conn = mysql.connector.connect(**db_config)
cursor = conn.cursor()

# Data tambahan yang perlu disimpan
kode_site = "NKA02"  # Ganti dengan kode site yang sesuai
jenis_peralatan = "Seismometer"
tahun = 2025
bulan = 1

# Tambahkan backticks (`) pada nama kolom yang berupa angka
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
