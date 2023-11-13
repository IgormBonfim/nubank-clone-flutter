import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_clone/pages/home/account/account.dart';
import 'package:nubank_clone/pages/home/actions/menu_items.dart';
import 'package:nubank_clone/pages/home/creditCard/credit_card.dart';
import 'package:nubank_clone/pages/home/creditCards/my_credit_cards.dart';
import 'package:nubank_clone/pages/home/models/header.dart';
import 'package:nubank_clone/pages/home/notifications/notifications.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              AccountNubank(),
              MenuItems(),
              MyCreditCards(),
              Notifications(),
              Divider(thickness: 1,),
              CreditCard(),
            ],
          ),
        ),
      ),
    );
  }
  
  PreferredSize _appBar() {
    return PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
      )
    );
  }
}
