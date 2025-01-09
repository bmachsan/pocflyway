CREATE TABLE user_role (
    id SERIAL PRIMARY KEY,          -- ID unik untuk setiap entri
    user_id INT NOT NULL,           -- ID pengguna (misalnya, dari tabel pengguna)
    role_name VARCHAR(50) NOT NULL, -- Nama peran, misalnya 'admin', 'editor', dll.
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Waktu pembuatan entri
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- Waktu pembaruan entri
);

-- Menambahkan constraint agar user_id dan role_name menjadi unik (satu pengguna hanya boleh memiliki satu peran pada waktu yang sama)
ALTER TABLE user_role ADD CONSTRAINT unique_user_role UNIQUE (user_id, role_name);
