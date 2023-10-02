import 'package:flutter/material.dart';

class DateTimePickerWidget extends StatefulWidget {
  final DateTime initialDate;
  final Function(DateTime) onDateSelected;

  const DateTimePickerWidget({
    Key? key,
    required this.initialDate,
    required this.onDateSelected,
  }) : super(key: key);

  @override
  _DateTimePickerWidgetState createState() => _DateTimePickerWidgetState();
}

class _DateTimePickerWidgetState extends State<DateTimePickerWidget> {
  late DateTime selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = widget.initialDate;
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });

      widget.onDateSelected(selectedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text("${selectedDate.toLocal()}".split(' ')[0]),
        SizedBox(
          height: 20.0,
        ),
        ElevatedButton(
          onPressed: () => _selectDate(context),
          child: Text('Pilih Tanggal'),
        ),
      ],
    );
  }
}
