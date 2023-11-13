import 'package:flutter/material.dart';
import 'package:nubank_clone/utils/colors_standar.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [_income(), _income(), _income()]),
    );
  }

  _income() {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      margin: const EdgeInsets.only(left: 20, top: 8),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(16)),
      child: RichText(
          text: TextSpan(children: [
        const TextSpan(
            text: "Seu ", style: TextStyle(color: Colors.black, fontSize: 16)),
        TextSpan(
            text: "informe de \nrendimentos ",
            style: TextStyle(color: backgroundColor, fontSize: 16)),
        const TextSpan(
            text: "2023 já está...",
            style: TextStyle(color: Colors.black, fontSize: 16)),
      ])),
    );
  }
}
