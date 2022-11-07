import 'dart:js_util';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPage2 extends StatefulWidget {
  @override
  State<CardPage2> createState() => _CardPage2State();
}

class _CardPage2State extends State<CardPage2> {
  bool on = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Card Page"),
      ),
      body: Column(
        children: [
          //Card 1
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage("assets/images/perfil.jpg"),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      "John Doe",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    subtitle: Text("Ceo at Apple Inc"),
                    trailing: Container(
                      margin:
                          EdgeInsets.only(top: 10.0, left: 15.0, bottom: 10.0),
                      padding: EdgeInsets.only(right: 5, left: 5),
                      width: 120,
                      height: 30,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.settings_outlined,
                            color: Colors.indigoAccent[400],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Settings",
                            style: TextStyle(
                                color: Colors.indigoAccent[400],
                                fontSize: 15,
                                fontWeight: FontWeight.w800),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.indigo[100],
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Card2
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.indigo[100],
                  backgroundImage: AssetImage("assets/images/quim.png"),
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      "The quick, brown fox jumps over",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    subtitle: Text(
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmond tempor",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Row(
              children: [
                Expanded(
                  child: SwitchListTile(
                    title: const Text('Lorem ipsum dolor sit amet, consetetur'),
                    value: on,
                    onChanged: (bool value) {
                      setState(() {
                        on = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
