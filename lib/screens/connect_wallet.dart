import 'package:flutter/material.dart';
import 'add_expense.dart';

class ConnectWallet extends StatefulWidget {
  @override
  _ConnectWalletState createState() => _ConnectWalletState();
}

class _ConnectWalletState extends State<ConnectWallet> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Түрийвч цэнэглэх",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: "Картууд"),
            Tab(text: "Аккаунт"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Картууд Tab
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 5,
                  child: Image.asset(
                    'assets/images/Cards.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Картын мэдээлэл нэмэх",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const TextField(
                  decoration: InputDecoration(labelText: "КАРТ ДЭЭРХ НЭР"),
                ),
                const TextField(
                  decoration: InputDecoration(labelText: "КАРТЫН ДУГААР"),
                ),
                const TextField(
                  decoration: InputDecoration(labelText: "CVC"),
                ),
                Row(
                  children: const [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(labelText: "ДУУСАХ ХУГАЦАА YYYY/MM"),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(labelText: "ZIP"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Аккаунт Tab
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ListTile(
                  leading: Icon(Icons.account_balance, color: Colors.teal),
                  title: Text("Bank Link"),
                  subtitle: Text("Connect your bank account to deposit & fund"),
                  trailing: Icon(Icons.check_circle, color: Colors.green),
                ),
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.attach_money, color: Colors.teal),
                  title: Text("Microdeposits"),
                  subtitle: Text("Connect bank in 5-7 days"),
                ),
                const Divider(),
                const ListTile(
                  leading: Icon(Icons.payment, color: Colors.teal),
                  title: Text("Paypal"),
                  subtitle: Text("Connect your Paypal account"),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddExpense()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal, // Set the background color to green
                    padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0), // Adjust padding
                    textStyle: const TextStyle(
                      fontSize: 20, // Make the text bigger
                      fontWeight: FontWeight.bold, // Optional: Make the text bold
                    ),
                  ),
                  child: const Text("ДАРААХ"),
                ),

              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar:  BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Chart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
