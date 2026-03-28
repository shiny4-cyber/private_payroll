# 🛡️ Aleo Private Payroll System
### *Zero-Knowledge Financial Privacy for the Modern Workforce*

![Aleo](https://img.shields.io/badge/Network-Aleo-blue?style=for-the-badge&logo=blockchaindotcom)
![Leo](https://img.shields.io/badge/Language-Leo-orange?style=for-the-badge&logo=rust)
![Status](https://img.shields.io/badge/Project-Akindo_WaveHack-green?style=for-the-badge)

---

## 📖 Deskripsi Proyek
**Aleo Private Payroll** adalah solusi penggajian berbasis blockchain yang mengutamakan privasi. Di jaringan publik biasa, data gaji karyawan bersifat transparan. Proyek ini menggunakan **Zero-Knowledge Proofs (ZKP)** agar:
1. **Gaji Bersifat Privat:** Hanya bos dan karyawan yang tahu jumlahnya.
2. **Saldo Aman:** Karyawan bisa memecah saldo (split) tanpa mengungkap total kekayaan mereka.
3. **Verifikasi On-Chain:** Transaksi sah secara hukum blockchain tanpa membocorkan data sensitif.

---

## 🛠️ Cara Penggunaan (Tutorial Lengkap)

### 1. Persiapan Awal
Pastikan Anda sudah menginstall [Leo Toolchain](https://github.com/AleoHQ/leo).
```bash
git clone [https://github.com/shiny4-cyber/private_payroll.git](https://github.com/shiny4-cyber/private_payroll.git)
cd private_payroll
leo build
2. Membuat Akun Baru (Jika belum punya)
Gunakan perintah ini untuk membuat alamat Aleo baru:
leo account new
Simpan Address dan Private Key Anda di tempat aman!
3. Simulasi Bayar Gaji (Employer Side)
Bos mengirim gaji ke alamat karyawan. Gunakan perintah ini:
# Ganti <ADDRESS_KARYAWAN> dengan alamat Aleo tujuan
leo run pay_employee <ADDRESS_KARYAWAN> 5000u64
Output Penting: Perhatikan bagian Outputs. Anda akan mendapatkan data JSON di dalam kurung kurawal { ... }. Ini adalah Salary Record. Berikan data ini kepada karyawan.
4. Memecah Saldo (Employee Side)
Karyawan menerima gaji 5000, tapi ingin membelanjakan 2000 dan menyimpan sisanya (3000).
# Masukkan Salary Record tadi di dalam tanda kutip tunggal
leo run split_salary '<RECORD_LU_TADI>' 2000u64
🧠 Logika Program (Smart Contract)
Program ini menggunakan model UTXO (Unspent Transaction Output) privat:
pay_employee: Membuat record baru yang dienkripsi untuk pemilik alamat tertentu.
split_salary: Mengambil satu record besar sebagai input, lalu memecahnya menjadi dua record (pembayaran + kembalian). Total input harus sama dengan total output.
🏆 Kriteria Penilaian Akindo
Proyek ini memenuhi standar WaveHack Aleo:
✅ Privacy: Semua jumlah transaksi tersembunyi di balik ZK-Records.
✅ Usability: Logika splitting yang memudahkan pengelolaan aset privat.
✅ Innovation: Solusi nyata untuk masalah financial privacy di dunia korporat.
Author: @shiny4-cyber
Event: Akindo WaveHack - Aleo Ecosystem Build
