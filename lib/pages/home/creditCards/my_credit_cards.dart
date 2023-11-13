import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/utils/colors_standar.dart';

class MyCreditCards extends StatelessWidget {
  const MyCreditCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(children: [
        Icon(MdiIcons.creditCard, color: Colors.black),
        const SizedBox(width: 12),
        const Text(
          "Meus cartões",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        )
      ]),
    );
  }
}
