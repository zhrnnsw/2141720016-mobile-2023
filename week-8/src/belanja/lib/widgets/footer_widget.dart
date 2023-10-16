import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('Zahra - 2141720016'), // Ganti YourNIM dengan NIM Anda
          //Text('Nama: YourName'), // Ganti YourName dengan nama Anda
        ],
      ),
    );
  }
}
