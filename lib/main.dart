import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

void main() => runApp(const HijriDatePicker());

class HijriDatePicker extends StatelessWidget {
  const HijriDatePicker({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Card(
            margin: const EdgeInsets.fromLTRB(50, 200, 50, 200),
            child: SfHijriDateRangePicker(
              view: HijriDatePickerView.month,
              selectionMode: DateRangePickerSelectionMode.multiple,
              selectionShape: DateRangePickerSelectionShape.rectangle,
              showNavigationArrow: true,
              selectionColor: Colors.indigoAccent,
              monthViewSettings: const HijriDatePickerMonthViewSettings(
                  dayFormat: 'EEE',
                  viewHeaderStyle: DateRangePickerViewHeaderStyle(
                      backgroundColor: Colors.tealAccent)),
              headerStyle:
              const DateRangePickerHeaderStyle(backgroundColor: Colors.teal),
            ),
          ),
        ),
      ),
    );
  }
}