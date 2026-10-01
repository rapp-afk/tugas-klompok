enum JenisKendaraan { motor, mobil }

int tarifParkir(JenisKendaraan kendaraan, int waktuMenit) {
  int jam = waktuMenit ~/ 60;
  if (waktuMenit % 60 > 0) {
    jam++;
  }
  if (jam == 0) {
    jam = 1;
  }
  
  switch (kendaraan) {
    case JenisKendaraan.motor:
      return 2000 + (jam - 1) * 1000;
    case JenisKendaraan.mobil:
      return 5000 + (jam - 1) * 3000;
  }
}
void main() {
  print('rp ${tarifParkir(JenisKendaraan.motor, 30)}');//ni total harga 2000
  print('rp ${tarifParkir(JenisKendaraan.mobil, 181)}');//yg ni 14000
}