import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  String? name;
  String? message;
  CustomAlertDialog({this.name, this.message});

  @override
  Widget build(BuildContext context) {
    final snackBarSave = SnackBar(
      content: Text('Data berhasil disimpan'),
    );
    return AlertDialog(
      title: const Text('Check Data Kamu'),
      content: Container(
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nama : $name"),
            Text("Nama : $message"),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context, 'OK');
            ScaffoldMessenger.of(context).showSnackBar(snackBarSave);
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
