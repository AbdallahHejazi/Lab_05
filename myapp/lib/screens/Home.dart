import 'package:flutter/material.dart';
import 'package:myapp/screens/Discover.dart';
//import 'package:myapp/screens/Discover.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Discover();
                  }));
                },
                icon: Icon(Icons.menu),
                label: Text("Discover"),
                style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black,
                    primary: Color.fromARGB(255, 206, 227, 19),
                    ),
              ),
            )
          ],
        title: Row(children: [Text("Nike"), Icon(Icons.home)]),
        
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage("https://i.pinimg.com/564x/77/84/c6/7784c6d0460ad3cc34c6971218e60ce2.jpg"),
            ),
          ),
        ),
      ),
    );
  }
}
