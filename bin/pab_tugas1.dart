class Produk{
  String namaProduk;
  double harga;
  int jumlah;
  double diskon;

  Produk(this.namaProduk, this.diskon, this.harga, this.jumlah);

  void tampilkanInformasiProduk(){
    print('Nama Produk : $namaProduk');
    print('Harga Satuan : Rp.$harga');
    print('Jumlah : $jumlah');
    print('Diskon : $diskon%');
  }
  double hitungTotalHargaTanpaDiskon(){
      return harga*jumlah;
    }
    void hitungTotalHargaSetelahDiskon(){
      double hargaAkhirTanpaDiskon = hitungTotalHargaTanpaDiskon();
      double diskon2 = diskon / 100;
      double hargaAkhirSetelahDiskon = hargaAkhirTanpaDiskon-(hargaAkhirTanpaDiskon*diskon2);
       print('Total Harga Tanpa Diskon : $hargaAkhirTanpaDiskon');
      print('Total Harga Setelah Diskon : $hargaAkhirSetelahDiskon');
    }
}

void main(){
  Produk produk = Produk('Kamera', 10, 1500000, 2);
  produk.tampilkanInformasiProduk();
  produk.hitungTotalHargaSetelahDiskon();
}