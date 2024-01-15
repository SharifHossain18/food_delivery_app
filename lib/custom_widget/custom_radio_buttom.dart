import 'package:flutter/material.dart';

class CustomSpiceLevel extends StatefulWidget {
  const CustomSpiceLevel({super.key});

  @override
  State<CustomSpiceLevel> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<CustomSpiceLevel> {
  String touched_value='regular';
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
            child: ListTile(
              horizontalTitleGap: 0,
              visualDensity: VisualDensity(vertical: -4, horizontal: -4),
              title: Text("Regular"),
              leading: Radio(
                value: 'regular',
                groupValue: touched_value,
                onChanged: (value) {
                  setState(() {
                    touched_value=value!;
                  });
                },
              ),
            )),
        Expanded(
            child: ListTile(
              horizontalTitleGap: 0,
              visualDensity: VisualDensity(vertical: -4, horizontal: -4),
              title: Text("Mild"),
              leading: Radio(
                value: 'mild',
                groupValue: touched_value,
                onChanged: (value) {
                  setState(() {
                    touched_value=value!;
                  });
                },
              ),
            )),
        Expanded(
            child: ListTile(
              horizontalTitleGap: 0,
              visualDensity: VisualDensity(vertical: -4, horizontal: -4),
              title: Text("Spicy"),
              leading: Radio(
                value: 'spicy',
                groupValue: touched_value,
                onChanged: (value) {
                  setState(() {
                    touched_value=value!;
                  });
                },
              ),
            )),
      ],
    );
  }
}
