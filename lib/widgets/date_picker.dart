import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  DatePicker({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  String formatTime(BuildContext context, TimeOfDay timeOfDay) {
    final MaterialLocalizations localizations =
        MaterialLocalizations.of(context);
    return localizations.formatTimeOfDay(timeOfDay);
  }

  String formatDate(DateTime date) =>
      DateFormat("EEEE MMM d , yyyy").format(date);

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    } else {
      print('date is not picked : $selectedDate');
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay picked =
        await showTimePicker(context: context, initialTime: selectedTime);
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: ListTile(
            title: Text(
              formatDate(selectedDate),
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
            trailing: FlatButton(
              onPressed: () => _selectDate(context),
              child: Icon(
                FontAwesomeIcons.calendarAlt,
                color: Colors.blue,
              ),
            ),
          ),
        ),
        Card(
          child: ListTile(
            title: Text(
              formatTime(context, selectedTime),
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
            trailing: FlatButton(
              onPressed: () => _selectTime(context),
              child: Icon(
                FontAwesomeIcons.clock,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
