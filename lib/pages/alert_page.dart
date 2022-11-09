import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Alert1'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Alert1('alert');
                    });
              },
            ),
            ElevatedButton(
              child: Text('Alert2'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Alert2('Alert2');
                    });
              },
            ),
            ElevatedButton(
              child: Text('Alert3'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Alert3();
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Alert1 extends StatelessWidget {
  final title;
  Alert1(this.title);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("AlertDialog example!!!"),
      backgroundColor: Colors.white,
      content: Text(
          "Este es un ejemplo del AlertDialog. esto es un texto de prueba"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Cancelar"),
        ),
        TextButton(
          onPressed: () {},
          child: Text("Aceptar"),
        ),
      ],
    );
  }
}

class Alert2 extends StatelessWidget {
  final title;
  Alert2(this.title);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Container(
        height: 200,
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                color: Colors.white70,
                child: Icon(
                  Icons.account_balance_wallet,
                  size: 60,
                ),
              ),
            ),
            Expanded(
                child: Container(
              color: Colors.white,
              child: SizedBox.expand(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class Alert3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Container(
        height: 200,
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                color: Colors.white70,
                child: Icon(
                  Icons.account_balance_wallet,
                  size: 60,
                ),
              ),
            ),
            Expanded(
                child: Container(
              color: Colors.white,
              child: SizedBox.expand(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
