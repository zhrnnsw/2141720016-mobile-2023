import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() =>
      __NavigationDialogScreenStateState();
}

class __NavigationDialogScreenStateState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen - Zahra'),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text('Change Color'),
            onPressed: () {
              _showColordialog(context);
            }),
      ),
    );
  }

  _showColordialog(BuildContext context) async {
    await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) {
          return AlertDialog(
            title: const Text('Very importan question'),
            content: const Text('Please choose a color'),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    color = Colors.grey.shade700;
                    Navigator.pop(context, color);
                  },
                  child: const Text('Grey')),
              TextButton(
                  onPressed: () {
                    color = Colors.orange.shade700;
                    Navigator.pop(context, color);
                  },
                  child: const Text('Orange')),
              TextButton(
                  onPressed: () {
                    color = Colors.black;
                    Navigator.pop(context, color);
                  },
                  child: const Text('Black')),
            ],
          );
        });

    setState(() {
      color = color;
    });
  }
}
