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
                      return AlertDialog();
                    });
              },
            ),
            ElevatedButton(
              child: Text('Alert3'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog();
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

class Al extends StatelessWidget {
  const Al({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}