import 'package:clone_tele/custom_font.dart';
import 'package:clone_tele/view/custom_alert_dialog.dart';
import 'package:flutter/material.dart';
import '../models.dart';

class MyForm extends StatefulWidget {
  final Message? messages;
  MyForm({this.messages});

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _messageController = TextEditingController();

  bool _isNameValidate = true;
  bool _isMessageValidate = true;
  @override
  @override
  void initState() {
    super.initState();
    _nameController.text = '${widget.messages!.name}';
    _messageController.text = '${widget.messages!.message}';
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF212D3B),
        leading: Padding(
          padding: const EdgeInsets.only(left: 28),
          child: Icon(Icons.people),
        ),
        title: Text('Buat Pesan'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 30,
                  right: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      style: plainText,
                      controller: _nameController,
                      decoration: InputDecoration(
                        label: Text(
                          'Nama',
                          style: headerText,
                        ),
                        errorText:
                            _isNameValidate ? null : "Nama Tidak Boleh Kosong",
                      ),
                      onChanged: (value) {
                        setState(() {
                          value.isEmpty
                              ? _isNameValidate = false
                              : _isNameValidate = true;
                        });
                      },
                    ),
                    SizedBox(height: 15),
                    TextField(
                      style: plainText,
                      controller: _messageController,
                      decoration: InputDecoration(
                        label: Text(
                          'Pesan',
                          style: headerText,
                        ),
                        errorText: _isMessageValidate
                            ? null
                            : "Pesan Tidak Boleh Kosong",
                      ),
                      onChanged: (value) {
                        setState(() {
                          value.isEmpty
                              ? _isMessageValidate = false
                              : _isMessageValidate = true;
                        });
                      },
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _nameController.text.isEmpty
                          ? _isNameValidate = false
                          : _isNameValidate = true;
                    });
                    if (_isNameValidate) {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => CustomAlertDialog(
                          name: '${widget.messages!.name}',
                          message: '${widget.messages!.message}',
                        ),
                      );
                    }
                  },
                  child: Text('Submit'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
