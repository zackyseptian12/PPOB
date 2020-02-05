CREATE TABLE pengguna(
    id_pengguna VARCHAR (20) NOT NULL,
    id_pelanggan VARCHAR (50) NOT NULL,
    bulan VARCHAR(100) NOT NULL,
    tahun VARCHAR (100) NOT NULL,
    meter_awal VARCHAR (100) NOT NULL,
    meter_akhir VARCHAR (100) NOT NULL,
    PRIMARY KEY (id_pengguna)
    );
    
    CREATE TABLE pelanggan(
    id_pelanggan VARCHAR (20) NOT NULL,
    username VARCHAR (50) NOT NULL,
    password VARCHAR(100) NOT NULL,
    nomor_kwh INTEGER NOT NULL,
    nama_pelanggan VARCHAR (100) NOT NULL,
    alamat VARCHAR (100) NOT NULL,
    id_tarif VARCHAR (100) NOT NULL,
    PRIMARY KEY (id_pelanggan)
        );
        
        CREATE TABLE admin(
    id_admin VARCHAR (20) NOT NULL,
   username VARCHAR (50) NOT NULL,
    password VARCHAR(100) NOT NULL,
    nama_admin VARCHAR (100) NOT NULL,
    id_level VARCHAR (100) NOT NULL,
    PRIMARY KEY (id_admin)
            );
            
         CREATE TABLE tarif(
    id_tarif VARCHAR (20) NOT NULL,
    daya VARCHAR (50) NOT NULL,
    tarifperkwh VARCHAR(100) NOT NULL,
    
    PRIMARY KEY (id_tarif)
             );
             
             CREATE TABLE tagihan(
    id_tagihan VARCHAR (20) NOT NULL,
    id_pengguna VARCHAR (50) NOT NULL,
    id_pelanggan VARCHAR(100) NOT NULL,
    bulan VARCHAR (100) NOT NULL,
    tahun VARCHAR (100) NOT NULL,
    jumlah_meter INTEGER NOT NULL,
     status VARCHAR (100) NOT NULL,
    PRIMARY KEY (id_tagihan)
                 );
                 
           CREATE TABLE pembayaran(
    id_pembayaran VARCHAR (20) NOT NULL,
    id_tagihan VARCHAR (50) NOT NULL,
    id_pelanggan VARCHAR(100) NOT NULL,
    tanggal_pembayaran DATE NOT NULL,
    bulan_bayar VARCHAR (100) NOT NULL,
    biaya_admin INTEGER NOT NULL,
    total_bayar INTEGER NOT NULL,
   id_admin VARCHAR (100) NOT NULL,
    PRIMARY KEY (id_pembayaran)
               );
               
               CREATE TABLE level(
    id_level VARCHAR (20) NOT NULL,
    nama_level VARCHAR (50) NOT NULL,
    PRIMARY KEY (id_level)
                   );