import 'package:flutter/material.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  DateTime date = DateTime(2022, 12, 24);
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text("Data Picker"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '${date.year}/${date.month}/${date.day}',
                style: TextStyle(fontSize: 32),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                child: Text('Select Date'),
                onPressed: () async {
                  DateTime? newDate = await showDatePicker(
                    context: context,
                    initialDate: date,
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                  );
                  if (newDate == null) return;

                  setState(() => date = newDate);
                },
              ),
            ],
          ),
        ),
      );
}
