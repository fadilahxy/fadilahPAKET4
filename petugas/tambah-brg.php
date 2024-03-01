<?php

if (isset($_POST['tambah'])) {
    $nama = $_POST['nama'];
    $id = $_POST['id'];
    $harga = $_POST['harga'];
    $stok = $_POST['stok'];

    $target ="../foto/";
    $time = date('dmYHis');
    $type = strtolower(pathinfo($_FILES["foto"]["name"], PATHINFO_EXTENSION));
    $targetfile = $target . $time . '.' . $type;
    $filename = $time . '.' . $type;

    $uploadOk = 1;

// File upload handling
if (move_uploaded_file($_FILES["foto"]["tmp_name"], $targetfile)) {
    $sql = "INSERT INTO produk (Produk_id, Nama_produk, Harga, Stok, Foto_produk) VALUES ('$id', '$nama', '$harga', '$stok', '$filename')";
    if ($koneksi->query($sql) === TRUE) {
        echo "<script>alert('Berhasil menambahkan produk');window.location.href='?page=stok';</script>";
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . $koneksi->error;
    }
} else {
    echo "Maaf, terjadi kesalahan saat mengupload file gambar.";
}

$koneksi->close();
}

?>

<div class="p-4" id="main-content">
        <div class="card well">
            <div class="card-body">
                <div class="container mt-5">
                    <h2>Tambah Produk Baru</h2>
                    <form action="" method="POST" class="col-md-10" enctype="multipart/form-data">

                    <div class="mb-3">
                        <label for="id" class="form-label">ID produk</label>
                        <input type="text" class="form-control" id="id" name="id" required>

                    </div>
                        <div class="mb-3">
                        <label for="nama" class="form-label">Nama Produk</label>
                        <input type="text" class="form-control" id="nama" name="nama" required>

                    </div>
                        <div class="mb-3">
                        <label for="harga" class="form-label">Harga</label>
                        <input type="number" class="form-control" id="harga" name="harga" required>

                     </div>
                        <div class="mb-3">
                        <label for="nama" class="form-label">Stok</label>
                        <input type="number" class="form-control" id="stok" name="stok" required>

                    </div>
                        <div class="mb-3">
                        <label for="foto" class="form-label">foto<span style="color: red;"> *</span></label>
                        <input type="file" class="form-control" id="foto" name="foto" required>

                        <p style="color: red;">Hanya bisa menginput foto dengan ekstensi PNG,JPG,JPEG,SVG</p>
                     </div>

                     <div class="mt-3">
                            <button type="submit" name="tambah" class="btn btn-primary">Tambah Produk</button>
                        </div>
                    </form>
                </div>            
            </div>
          </div>
        </div>
      </body>

                 




        
        

