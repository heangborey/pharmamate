import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.network(
              "https://img.freepik.com/premium-vector/pharmacy-logo-design-professional-modern-vector-design_579306-26324.jpg?w=360",
              width: 50,
            ),
            Text('Pharma', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
              "Mate",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          ],
        ),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.red,
              hint: Text("Search"),
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
