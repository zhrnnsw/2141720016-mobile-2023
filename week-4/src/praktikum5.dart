
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  var record = ('first', a: 2, b: 8, 'last');
  print('Sebelum pertukaran: $record');
  var hasil = tukar(record);
  print('Sebelum pertukaran: $hasil');
}

