import 'package:flutter/material.dart';
import 'package:hello_world/main.dart';
import 'basic_widgets/alert_dialog_widget.dart';
import 'basic_widgets/date_time_pickers_widget.dart';
import 'basic_widgets/scaffold_widget.dart';
import 'basic_widgets/text_field_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Flutter Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime selectedDate = DateTime.now();
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: widget.title,
      counter: _counter,
      onIncrement: () {
        setState(() {
          _counter++;
        });
      },
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextFieldWidget(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: DateTimePickerWidget(
                initialDate: selectedDate,
                onDateSelected: (DateTime date) {
                  setState(() {
                    selectedDate = date;
                  });
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: AlertDialogWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
