
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  var record = (2,8);
  print('Sebelum pertukaran: $record');
  var hasil = tukar(record);
  print('Sebelum pertukaran: $hasil');

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa;
  mahasiswa = ('Zahra Annisa Wahono', 2141720016,);
  print(mahasiswa);

  var mahasiswa2 = ('Zahra Annisa Wahono', nim: 2141720016, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.nim); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

