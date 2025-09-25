# Kasalxona Ma'lumotlar Bazasi

Bu loyiha oddiy kasalxona uchun **SQLite** ma'lumotlar bazasini yaratish va boshqarish uchun yozilgan.  

## Jadval tuzilmalari
- **bolimlar**: bo‘limlar ro‘yxati (nomi, xona raqami, telefon)
- **shifokorlar**: shifokorlar ma’lumotlari (ism, familiya, bo‘lim)
- **bemorlar**: bemorlar ma’lumotlari (ism, familiya, kasallik, shifokori)

## Bog‘lanishlar
- `shifokorlar.bolim_id` → `bolimlar.id`
- `bemorlar.shifokor_id` → `shifokorlar.id`

## Dastlabki ma’lumotlar
- **Bo‘limlar**: Terapiya, Jarrohlik, Pediatriya, Kardiologiya, Nevrologiya
- **Shifokorlar**: Aziz Karimov, Gulnora Toshieva, Nargiza Yunusova va boshqalar
- **Bemorlar**: Ali Valiyev, Maryam Qodirova, Jasur Toshev va boshqalar

## Ishlatish
```sql
-- Ma'lumotlar bazasini yaratish
sqlite3 kasalxona.db < schema.sql

-- Jadvalni ko‘rish
SELECT * FROM bolimlar;
SELECT * FROM shifokorlar;
SELECT * FROM bemorlar;
