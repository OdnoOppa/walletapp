import 'package:flutter/material.dart';

class AddExpense extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Зарлага нэмэх",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField(
              decoration: const InputDecoration(labelText: "Гүйлгээний нэр"),
              items: const [
                DropdownMenuItem(child: Text("Netflix"), value: "Netflix"),
                DropdownMenuItem(child: Text("Spotify"), value: "Spotify"),
              ],
              onChanged: (value) {},
            ),
            const TextField(
              decoration: InputDecoration(labelText: "ҮНИЙН ДҮН", prefixText: "\$"),
              keyboardType: TextInputType.number,
            ),
            const TextField(
              decoration: InputDecoration(labelText: "ОГНОО"),
              keyboardType: TextInputType.datetime,
            ),
            const SizedBox(height: 16),
            Row(
              children: const [
                Text("ТӨЛБӨР"),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.add_circle_outline),
                  onPressed: null,
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Төлбөр нэмэх"),
            ),
          ],
        ),
      ),
      bottomNavigationBar:  BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Wallet"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
