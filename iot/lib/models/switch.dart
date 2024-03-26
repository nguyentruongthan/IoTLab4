import 'package:flutter/material.dart';
class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}


class _SwitchExampleState extends State<SwitchExample> {
  bool light1 = true;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Transform.scale(
        scale: 1.75,
        child: Switch(
          thumbIcon: thumbIcon,
          value: light1,
          activeColor: Colors.red,
          onChanged: (bool value) {
            setState(() {
              light1 = value;
            });
          },
        ),
      ),
    );
  }
}