import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/utils/colors_standar.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            _menuItem(icon: MdiIcons.clover, text: "Área Pix", isFirst: true),
            _menuItem(icon: MdiIcons.barcode, text: "Pagar"),
            _menuItem(icon: MdiIcons.cash, text: "Transferir"),
            _menuItem(icon: MdiIcons.cash, text: "Depositar"),
            _menuItem(icon: MdiIcons.creditCard, text: "Recarga"),
            _menuItem(icon: MdiIcons.heartOutline, text: "Doação"),
          ],
        ),
      ),
    );
  }

  _menuItem({required IconData icon, required String text, bool? isFirst}) {
    return Container(
      padding: (isFirst ?? false)
          ? const EdgeInsets.only(right: 7, left: 20)
          : const EdgeInsets.symmetric(horizontal: 7),
      child: Column(children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: greyColor, borderRadius: BorderRadius.circular(48)),
          child: Icon(icon),
        ),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}
