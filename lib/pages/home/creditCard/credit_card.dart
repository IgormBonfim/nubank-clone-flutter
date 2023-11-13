import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/controllers/controller_home_page.dart';
import 'package:nubank_clone/utils/colors_standar.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(
          direction: Axis.vertical,
          crossAxisAlignment: WrapCrossAlignment.start,
          spacing: 25,
          runSpacing: 10,
          children: [
            _iconCreditCard(),
            _textCreditCardRow(),
            _invoice(),
            _limiteDisponivel(),
            _installments()
          ]),
    );
  }

  _iconCreditCard() {
    return Icon(MdiIcons.creditCard);
  }

  _textCreditCardRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Cartão de crédito",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Icon(MdiIcons.chevronRight)
      ],
    );
  }

  _invoice() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          "Fatura atual",
          style: TextStyle(color: Colors.grey),
        ),
        GetBuilder<ControllerHomePage>(
            init: ControllerHomePage(),
            builder: (controllerHomePage) {
              return Text(
                controllerHomePage.creditCardValue,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              );
            }),
      ],
    );
  }

  _limiteDisponivel() {
    return const Text(
      "Limite disponível de R\$4.000,00",
      style: TextStyle(color: Colors.grey),
    );
  }

  _installments() {
    return Container(
      margin: const EdgeInsets.only(top: 4, bottom: 16),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(12)),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        child: const Text(
          "Parcelar compras",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
