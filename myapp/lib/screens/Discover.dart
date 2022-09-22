import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import '../model/model.dart';
import 'package:ionicons/ionicons.dart';
import 'package:myapp/main.dart';



class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 0, 0, 0),

          bottom: TabBar(
            tabs: [
              IconButton(onPressed: () {}, icon: Icon(Ionicons.shirt_outline,color: Color.fromARGB(255, 206, 227, 19),)),
              IconButton(onPressed: () {}, icon: Icon(Icons.sports_baseball_outlined,color: Color.fromARGB(255, 206, 227, 19))),
              IconButton(onPressed: () {}, icon: Icon(Ionicons.share_social_outline,color: Color.fromARGB(255, 206, 227, 19))),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: ListView(
                children: [
                  Container(
                    height: 600,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                      image: NetworkImage("https://i.pinimg.com/564x/ba/64/50/ba6450842270041c79367e76e390df59.jpg")
                      ),
                    ),
                  ),
                     
                     
                      ElevatedButton.icon(
                icon: Icon(
                  color: Colors.black,
                  Icons.add,
                ),
                onLongPress: () {
                  print("pressed too long");
                },
                style: ElevatedButton.styleFrom(
                    onPrimary:Colors.black,
                    primary: Color.fromARGB(255, 206, 227, 19),
                    elevation: 20),
                label: Text(
                  "Add",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                }),
                  Container(
                    height: 600,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:AssetImage("pics/22.jpg"),
                      ),
                      ),
                    ),
                   ElevatedButton.icon(
                icon: Icon(
                  color: Colors.black,
                  Icons.add,
                ),
                onLongPress: () {
                  print("pressed too long");
                },
                style: ElevatedButton.styleFrom(
                    onPrimary:Colors.black,
                    primary: Color.fromARGB(255, 206, 227, 19),
                    elevation: 20),
                label: Text(
                  "Add",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                }),
                  Container(
                    height: 600,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("pics/33.jpg"),
                      ),
                      ),
                    ),
                    ElevatedButton.icon(
                icon: Icon(
                  color: Colors.black,
                  Icons.add,
                ),
                onLongPress: () {
                  print("pressed too long");
                },
                style: ElevatedButton.styleFrom(
                    onPrimary:Colors.black,
                    primary: Color.fromARGB(255, 206, 227, 19),
                    elevation: 20),
                label: Text(
                  "Add",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                }),
                ],
              ),
            ),
            Center(
              child: ListView(
                children: [
                  Container(
                    height: 600,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("pics/66.jpg"),
                      ),
                    ),
                  ),
                    ElevatedButton.icon(
                icon: Icon(
                  color: Colors.black,
                  Icons.add,
                ),
                onLongPress: () {
                  print("pressed too long");
                },
                style: ElevatedButton.styleFrom(
                    onPrimary:Colors.black,
                    primary: Color.fromARGB(255, 206, 227, 19),
                    elevation: 20),
                label: Text(
                  "Add",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                }),
                  Container(
                    height: 600,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("pics/55.jpg"),
                      ),
                    ),
                  ),
                    ElevatedButton.icon(
                icon: Icon(
                  color: Colors.black,
                  Icons.add,
                ),
                onLongPress: () {
                  print("pressed too long");
                },
                style: ElevatedButton.styleFrom(
                    onPrimary:Colors.black,
                    primary: Color.fromARGB(255, 206, 227, 19),
                    elevation: 20),
                label: Text(
                  "Add",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                }),
                  Container(
                    height: 600,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("pics/44.jpg"),
                      ),
                    ),
                  ),

                    ElevatedButton.icon(
                icon: Icon(
                  color: Colors.black,
                  Icons.add,
                ),
                onLongPress: () {
                  print("pressed too long");
                },
                style: ElevatedButton.styleFrom(
                    onPrimary:Colors.black,
                    primary: Color.fromARGB(255, 206, 227, 19),
                    elevation: 20),
                label: Text(
                  "Add",
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                }),
                ],
              ),
            ),
            Column(
              children: [
                Urlclass(
                  myfinction: facebookf,
                  mypaltfromtitle: "facebook",
                  mypaltfoemsubtitl: "5er",
                  mypaltformicon: Icons.facebook,
                ),
                Urlclass(
                  myfinction: instaf,
                  mypaltfromtitle: "instagem",
                  mypaltfoemsubtitl: "user",
                  mypaltformicon: Ionicons.logo_instagram,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 206, 227, 19),
                    ),
                    onPressed: (() {
                      setState(() {
                        Navigator.pop(context,
                            MaterialPageRoute(builder: (context) {
                          return MyApp();
                        }));
                      });
                    }),
                    child: Text("Back")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
