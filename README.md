# FMCG SQL Analytics (2022–2024)

End-to-end analytics pipeline untuk data FMCG harian (2022–2024):  
**Python → SQL Server (staging/mart) → Power BI Dashboard (FMCG_Analysis.pbix)**

---

## 📂 Project Structure
- **Explore/**: eksplorasi awal (profil data, nulls, distribusi).
- **Clean/**: pembersihan, standardisasi kolom/tipe.
- **Transform/**: feature engineering (revenue, promo flag), agregasi awal.
- **Validate/**: QA checks (konsistensi, duplikat, range).
- **Analyze/**: SQL untuk KPI (trend, top products, channel/region, promo impact).
- **Save-Reuse/**: View/Tabel mart siap konsumsi BI.
- **PowerBI/**: file dashboard **`FMCG_Analysis.pbix`**.
- **Notebooks/**: pipeline download & load ke SQL.

---

## 📂 Dataset
Dataset yang digunakan:  
[FMCG Daily Sales Data (2022–2024)](https://www.kaggle.com/datasets/beatafaron/fmcg-daily-sales-data-to-2022-2024)  

- Format: CSV (dikompresi ZIP)  
- Periode: 1 Januari 2022 – 31 Desember 2024  
- Kolom utama:
  - `date` → tanggal transaksi harian
  - `sku` → kode produk
  - `brand`, `segment`, `category` → atribut produk
  - `region`, `channel` → lokasi & kanal distribusi
  - `pack_type` → tipe kemasan
  - `price_unit` → harga per unit
  - `units_sold`, `delivered_qty`, `stock_available`
  - `promotion_flag` → indikator promosi  

⚠️ **Catatan**: File dataset **tidak di-commit ke repo** (karena besar), hanya digunakan secara lokal. Untuk mengunduh ulang, gunakan link Kaggle di atas.

---

## 🧱 Tech Stack
- Python (pandas, sqlalchemy, pyodbc)  
- SQL Server (ODBC Driver 17)  
- Power BI (**`FMCG_Analysis.pbix`**)  

---

## 🗄️ Database Design
- **Database**: `fmcg_sales`  
- **Table**: `dbo.daily_sales` (hasil load dari Python)  
- **Schema mart**: view/tabel ringkas (lihat folder `Save-Reuse/`)  

---

## 🚀 Getting Started
1. Buat `.env` dari `env.example`.
2. Jalankan `Notebooks/00_download_load_to_sql.ipynb` untuk load data ke SQL Server.
3. Jalankan skrip di `Save-Reuse/` untuk membuat view `mart.*`.
4. Buka `PowerBI/Visualiasi-FMCG.pbix`, refresh data source → pilih `fmcg_sales`.

---

## 📊 Analisis Utama
- 📈 Monthly Revenue Trend (YoY/MoM)  
- 🛒 Top SKU & Category Contribution  
- 🌍 Region × Channel Performance  
- 🎯 Promotion Effectiveness  

---

##  Power BI Dashboard & Visualisasi

Nikmati hasil visualisasi dan storytelling data FMCG dalam dua format:

[![Visualisasi PDF](https://img.shields.io/badge/View-Visualisasi--FMCG.pdf-orange?style=for-the-badge)](https://github.com/xxvlrapss/fmcg-sales-analysis-2022-2024/blob/main/PowerBI/Visualiasi-FMCG.pdf)

[![Download PBIX](https://img.shields.io/badge/Download-PowerBI--Dashboard.pbix-blue?logo=power-bi&style=for-the-badge)](https://github.com/xxvlrapss/fmcg-sales-analysis-2022-2024/blob/main/PowerBI/Visualiasi-FMCG.pbix)

- **Visualisasi-FMCG.pdf** – Versi statis dari dashboard, ideal untuk preview cepat tanpa Power BI.
- **Visualiasi-FMCG.pbix** – File Power BI interaktif lengkap, bisa kamu buka langsung di Power BI Desktop.

---

 Tambahkan halaman ini pada section “Power BI Dashboard” di README utamamu agar recruiter atau reviewer bisa langsung melihat:
- **Preview visualisasi** (dengan klik PDF badge)
- **Dashboard interaktif lengkap** (dengan klik PBIX badge)

---

Kalau kamu mau, aku bisa bantu tempatkan ini dalam struktur README utama sehingga tampil di bagian yang tepat (misalnya di bawah “Power BI” atau diakhiri README sebagai link call-to-action). Mau lanjut seperti itu?
::contentReference[oaicite:0]{index=0}

---

## 📝 Notes
- Data mentah tidak di-commit (lihat `.gitignore`).  
- Gunakan Git LFS jika ingin menyimpan file `.pbix` besar.  
- Untuk demo, screenshot dashboard bisa ditambahkan di README.



