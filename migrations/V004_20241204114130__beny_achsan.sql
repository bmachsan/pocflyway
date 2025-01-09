CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,              -- ID unik untuk setiap pelanggan
    first_name VARCHAR(100) NOT NULL,            -- Nama depan pelanggan
    last_name VARCHAR(100) NOT NULL,             -- Nama belakang pelanggan
    email VARCHAR(255) UNIQUE NOT NULL,          -- Alamat email pelanggan (harus unik)
    phone_number VARCHAR(20),                    -- Nomor telepon pelanggan
    address TEXT,                                -- Alamat pelanggan
    city VARCHAR(100),                           -- Kota pelanggan
    state VARCHAR(100),                          -- Provinsi atau negara bagian
    postal_code VARCHAR(20),                     -- Kode pos
    country VARCHAR(100),                        -- Negara
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Tanggal dan waktu pembuatan data
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Tanggal dan waktu pembaruan data
);
