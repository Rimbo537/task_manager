import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task_manager/ui/widgets/components/basic_container.dart';

class CustomDatePicker extends StatefulWidget {
  final String? date;
  const CustomDatePicker({super.key, this.date});

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    if (widget.date != 'null') {
      _selectedDate = DateTime.parse(widget.date.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('dd MMMM yyyy');
    final selectedDateString =
        _selectedDate != null ? dateFormat.format(_selectedDate!) : '';

    return BasicContainer(
      child: GestureDetector(
        onTap: () => _selectDate(context),
        child: Text(
          _selectedDate == null ? 'Дата завершення:' : selectedDateString,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }
}
