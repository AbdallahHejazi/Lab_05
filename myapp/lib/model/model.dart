import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri f_url = Uri.parse('https://www.facebook.com');
final Uri n_url = Uri.parse('https://www.instagram.com/');

Future<void> facebookf() async {
  if (!await launchUrl(f_url)) {
    throw 'Could not launch $f_url';
  }
}

Future<void> instaf() async {
  if (!await launchUrl(n_url)) {
    throw 'Could not launch $n_url';
  }
}

class Urlclass extends StatelessWidget {
  Urlclass(
      {required this.myfinction,
      required this.mypaltfromtitle,
      required this.mypaltfoemsubtitl,
      required this.mypaltformicon});

  String? mypaltfromtitle;
  String? mypaltfoemsubtitl;
  IconData? mypaltformicon;
  Function()? myfinction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myfinction,
      child: Container(
        child: ListTile(
          title: Text("$mypaltfromtitle"),
          subtitle: Text("$mypaltfoemsubtitl"),
          leading: Icon(mypaltformicon),
        ),
      ),
    );
  }
}
