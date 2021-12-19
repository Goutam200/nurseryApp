import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 50;
  final String name = "Goutam Gunjal";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nursery app"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to BAG's Poject"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
