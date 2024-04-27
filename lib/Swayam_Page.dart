
import 'package:flutter/material.dart';
import 'package:ministry_of_eduction/Swayam_web_page.dart';

class Sawayam_Page extends StatefulWidget {
  const Sawayam_Page({Key? key}) : super(key: key);

  @override
  State<Sawayam_Page> createState() => _Sawayam_PageState();
}

class _Sawayam_PageState extends State<Sawayam_Page> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:
      PreferredSize(child:  AppBar(
        title: const Text(
          "Ministry OF Eduction",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.pinkAccent.shade100,
      ), preferredSize: Size(0, 50)),

      body: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
        Center(
          child: Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(10),
            child:  MaterialButton(
              shape: Border.all(color: Colors.lightGreen.shade900,width: 5),
              color: Colors.indigo[900],
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Swayam_web_page(),
                      settings: const RouteSettings(
                        arguments: "https://swayam.gov.in/",
                      ),
                    ),
                  );
                });
              },
              child: const Text(
                "Swayam",
                style: TextStyle(color: Colors.white,letterSpacing: 0.5,fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
            ),

            ),
        ),
      ],),

    );
  }
}