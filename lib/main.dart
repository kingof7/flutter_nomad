// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currency_card.dart';

class Player {
  String? name; // ? : name을 가질수도, 아닐수도
  // Player({required this.name});
  Player();
}

void main() {
  // var nico = Player(name: "potato");
  var nico = Player();
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // root Widget
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Hey, Selena',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Text(
                            'Welcome back',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.8),
                                fontSize: 18),
                          ),
                        ])
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '\$5 194 482',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Button(
                      text: 'Transfer',
                      bgColor: Color(0xFFF1B33B),
                      textColor: Colors.black,
                    ),
                    const Button(
                      text: 'Request',
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Wallets',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        )),
                    Text('View All',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 15,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: 'EURO',
                  code: 'EUR',
                  amount: '6 428',
                  icon: Icons.euro_rounded,
                  isInverted: false,
                ),
                Transform.translate(
                  offset: Offset(0, -30),
                  child: const CurrencyCard(
                    name: 'Bitcoin',
                    code: 'BTC',
                    amount: '9 785',
                    icon: Icons.currency_bitcoin,
                    isInverted: true,
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, -60),
                  child: const CurrencyCard(
                    name: 'Dollar',
                    code: 'USD',
                    amount: '428',
                    icon: Icons.attach_money_outlined,
                    isInverted: false,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
