import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'connect_wallet.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            // Balance Section
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.teal,
              child: Column(
                children: [
                  const Text(
                    'Нийт үлдэгдэл',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '\$2,548.00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _actionButton(Icons.add, 'Нэмэх', () {
                        Navigator.push(
                          context,
                            MaterialPageRoute(
                              builder: (context) => ConnectWallet()
                            ),);
                      }),
                      _actionButton(Icons.compare_arrows, 'Төлөх', () {}),
                      _actionButton(Icons.send, 'Илгээх', () {}),
                    ],
                  ),
                ],
              ),
            ),

            // Tabs Section
            Container(
              color: Colors.grey[200],
              child: const TabBar(
                indicatorColor: Colors.teal,
                labelColor: Colors.teal,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: 'Гүйлгээнүүд'),
                  Tab(text: 'Хүлээгдэж буй гүйлгээ'),
                ],
              ),
            ),

            // Transactions Section
            Expanded(
              child: TabBarView(
                children: [
                  _transactionsList(),
                  _pendingTransactionsList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _actionButton(IconData icon, String label, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: Icon(
              icon,
              color: Colors.teal,
            ),
          ),
          const SizedBox(height: 8), // Fixed height
          Text(label, style: const TextStyle(color: Colors.black)), // Fixed comma
        ],
      ),
    );
  }

  Widget _transactionsList() {
    final transactions = [
      {
        'icon': FontAwesomeIcons.upwork,
        'label': 'Upwork',
        'amount': '+\$850.00',
        'date': 'Today',
        'color': Colors.green
      },
      {
        'icon': Icons.person,
        'label': 'Transfer',
        'amount': '-\$85.00',
        'date': 'Yesterday',
        'color': Colors.red
      },
      {
        'icon': FontAwesomeIcons.paypal,
        'label': 'Paypal',
        'amount': '+\$1,406.00',
        'date': 'Jan 30, 2022',
        'color': Colors.green
      },
      {
        'icon': FontAwesomeIcons.youtube,
        'label': 'Youtube',
        'amount': '-\$11.99',
        'date': 'Jan 16, 2022',
        'color': Colors.red
      },
    ];

    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final transaction = transactions[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: Icon(transaction['icon'] as IconData, color: Colors.teal),
          ),
          title: Text(transaction['label'] as String),
          subtitle: Text(transaction['date'] as String),
          trailing: Text(
            transaction['amount'] as String,
            style: TextStyle(
              color: transaction['color'] as Color,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }

  Widget _pendingTransactionsList() {
    final pendingTransactions = [
      {
        'icon': FontAwesomeIcons.youtube,
        'label': 'Youtube',
        'date': 'Feb 28, 2022'
      },
      {
        'icon': FontAwesomeIcons.bolt,
        'label': 'Electricity',
        'date': 'Mar 28, 2022'
      },
      {
        'icon': FontAwesomeIcons.home,
        'label': 'House Rent',
        'date': 'Mar 31, 2022'
      },
      {
        'icon': FontAwesomeIcons.spotify,
        'label': 'Spotify',
        'date': 'Feb 28, 2022'
      },
    ];

    return ListView.builder(
      itemCount: pendingTransactions.length,
      itemBuilder: (context, index) {
        final transaction = pendingTransactions[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[200],
            child: Icon(transaction['icon'] as IconData, color: Colors.teal),
          ),
          title: Text(transaction['label'] as String),
          subtitle: Text(transaction['date'] as String),
          trailing: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text('Төлөх'),
          ),
        );
      },
    );
  }
}
