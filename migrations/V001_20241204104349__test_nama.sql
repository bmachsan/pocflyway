CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,       -- Kolom ID produk dengan auto-increment
    name VARCHAR(100) NOT NULL,           -- Nama produk
    price DECIMAL(10, 2) NOT NULL,        -- Harga produk (dengan dua angka di belakang koma)
    in_stock BOOLEAN DEFAULT TRUE,        -- Status stok produk (default TRUE, berarti tersedia)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Tanggal pembuatan
);
