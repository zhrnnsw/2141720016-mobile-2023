# **Tugas Praktikum 1 - Dasar State dengan Model-View**

![Alt text](/img/praktikum1_2.gif) 

**Langkah 4: Buat file data_layer.dart**

```
export 'plan.dart';
export 'task.dart';
```

Langkah diatas merupakan pembuatan file data_layer dart yang berisi export dari model-model yang telah dibuat (plan.dart dan task.dart)

Langkah ini dilakukan agar mempermudah proses impor model-model yang telah kita buat. Jadi kita cukup mengimpor satu file 'data_layer.dart' jika kita perlu membutuhkan model yang ada tanpa harus melakukan import model satu persatu. Ini membuat kode menjadi lebih ringkas dan mudah dipelihara karena memungkinkan kita untuk fokus tanpa memikirkan detail model yang ada.


**Langkah 6: buat plan_screen.dart**

```
import '../models/data_layer.dart';
import 'package:flutter/material.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({super.key});

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  Plan plan = const Plan();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    // ganti ‘Namaku' dengan Nama panggilan Anda
    appBar: AppBar(title: const Text('Master Plan Namaku')),
    body: _buildList(),
    floatingActionButton: _buildAddTaskButton(),
   );
  }
}
```
Pada langkah 6 variabel plan digunakan untuk menyimpan data terkait rencana yang akan ditampilkan. Variable ini akan menyimpan seluruh task yang kita tambahkan dalam bentuk list, dengan adanya variabel ini kita dapat menyimpan, mengubah dan menampilkan task dengan lebih jelas dan efisien. Tanpa variabel ini, kita akan lebih sulit untuk mengupdate atau melihat perubahan yang telah kita lakukan seperti menambahkan dan menghapus task serta mengubah task yang sudah ada.


**Langkah 9: buat widget _buildTaskTile**

Dari langkah 8, kita butuh ListTile untuk menampilkan setiap nilai dari plan.tasks. Kita buat dinamis untuk setiap index data, sehingga membuat view menjadi lebih mudah. Tambahkan kode berikut ini.
```
 Widget _buildTaskTile(Task task, int index) {
    return ListTile(
      leading: Checkbox(
          value: task.complete,
          onChanged: (selected) {
            setState(() {
              plan = Plan(
                name: plan.name,
                tasks: List<Task>.from(plan.tasks)
                  ..[index] = Task(
                    description: task.description,
                    complete: selected ?? false,
                  ),
              );
            });
          }),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          setState(() {
            plan = Plan(
              name: plan.name,
              tasks: List<Task>.from(plan.tasks)
                ..[index] = Task(
                  description: text,
                  complete: task.complete,
                ),
            );
          });
        },
      ),
    );
  }

 ``` 

![Alt text](/img/praktikum1.gif) 

Langkah 9 ini menunjukkan pembuatan fungsi _buildTaskTile digunakan untuk membuat tampilan dinamis untuk setiap tugas dalam plan.tasks. Ini memperlihatkan kotak centang untuk status tugas (selesai/belum selesai) dan kotak teks untuk mengedit deskripsi tugas. Ketika ada perubahan pada salah satu dari itu, setState dipanggil untuk memperbarui plan dengan perubahan yang dilakukan pada tugas tertentu. Ini memungkinkan pengguna untuk mengubah dan menyimpan perubahan langsung dari antarmuka pengguna.

**Langkah 11: Tambah Scroll Listener**

Tambahkan method initState() setelah deklarasi variabel scrollController seperti kode berikut.
```
@override
void initState() {
  super.initState();
  scrollController = ScrollController()
    ..addListener(() {
      FocusScope.of(context).requestFocus(FocusNode());
    });
}
```

**Langkah 13: Terakhir, tambah method dispose()**
Terakhir, tambahkan method dispose() berguna ketika widget sudah tidak digunakan lagi.
```
@override
void dispose() {
  scrollController.dispose();
  super.dispose();
}
```
initState() digunakan untuk inisialisasi, disini digunakan untuk mengatur perilaku scrollController saat widget pertama kali dibuat.

dispose() dipanggil saat widget tidak diperlukan lagi, digunakan untuk membersihkan sumber daya yang tidak diperlukan, seperti dalam kasus ini, membersihkan scrollController.

Kedua method ini, baik initState() maupun dispose(), adalah bagian dari siklus hidup widget dalam Flutter yang membantu dalam persiapan dan membersihkan sumber daya yang diperlukan seiring dengan perubahan status dan penggunaan widget. Ini memastikan pengelolaan memori dan sumber daya yang efisien selama aplikasi berjalan.

# **Tugas Praktikum 2: InheritedWidget**



# **Tugas Praktikum 3: State di Multiple Screens**