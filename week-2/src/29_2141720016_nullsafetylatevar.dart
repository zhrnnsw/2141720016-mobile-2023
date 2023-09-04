
 void main() {
  int? nilai; // Variabel yang bisa berisi null
  print(nilai); // Output: null
  //print(nilai + 1);
  
  nilai = 5; // Variabel diinisialisasi dengan nilai integer
  print(nilai); // Output: 5
  print(nilai + 1);
 


  late int nilai_late; // Variabel late, belum diinisialisasi
  //print(nilai_late); // Output: null (default saat belum diinisialisasi)
  
  nilai_late = 5; // Variabel diinisialisasi dengan nilai integer
  print(nilai_late); // Output: 5
}
