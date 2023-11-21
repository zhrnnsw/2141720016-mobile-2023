**Zahra Annisa Wahono**

**3H/29**

**2141720016**
---

# **Lanjutan State Management dengan Streams**

## **Praktikum 1: Dart Streams**

**Soal 1:** Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda. Gantilah warna tema aplikasi sesuai kesukaan Anda.
```
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream - Zahra',
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: const StreamHomePage(),
    );
  }
}
```
**Soal 2:** Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.

```
import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.black,
    Colors.lime,
    Colors.pink,
    Colors.grey,
    Colors.brown,
  ];
}
```
