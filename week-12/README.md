> **Zahra Annisa Wahono**
>
> 2141720016
>
> 3H/29
---
# **Praktikum 1: Mengunduh Data dari Web Service (API)**

**Soal 1**
Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
```
return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the Future - Zahra'),
      ),
```

**Soal 2** Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel `path`
```
  Future<Response> getData() async{
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/9-COCwAAQBAJ';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }
  ```
<img src="img/image-1.png">

**Soal 3** Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!
```
            onPressed: () {
                setState(() {});
                getData()
                .then((value){
                  result = value.body.toString().substring(0,450);
                  setState(() {
                    
                  });
                }).catchError((_){
                  result = 'An error has occured';
                  setState(() {
                    
                  });
                });
              },
```

Pada langkah kelima, dilakukan penggunaan metode substring(0, 450) untuk mengekstraksi 450 karakter pertama dari respons HTTP untuk membatasi panjang teks yang akan ditampilkan dalam aplikasi. Penggunaan catchErrordigunakan untuk mengatasi kemungkinan terjadinya kesalahan selama proses permintaan data. Jika terdapat kesalahan saat pengambilan data, maka  pesan 'An error has occurred' akan dimasukkan ke variabel result dan ditampilkan.

<img src="img/praktikum1.gif">