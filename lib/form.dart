import 'package:clone_tele/custom_font.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'models.dart';

class MyForm extends StatefulWidget {
  MyForm({Key? key}) : super(key: key);

  @override
  _MyFormState createState() => _MyFormState();
}

enum jenisKelamain { Pria, Wanita }
jenisKelamain? _jk = jenisKelamain.Pria;
String jkToString(jenisKelamain value) =>
    value.toString().substring(value.toString().indexOf('.') + 1);
String jkPilih = _jk.toString().substring(_jk.toString().indexOf('.') + 1);

List isiChkBox = [];

void ambilCheckBox() {
  isiChkBox.clear();
  for (var i = 0; i < itemCheckBox.length; i++) {
    if (itemCheckBox[i].isCheck != false) {
      isiChkBox.add(itemCheckBox[i].title!);
    }
  }
}

class _MyFormState extends State<MyForm> {
  final snackBarSave = SnackBar(content: Text('Data berhasil disimpan'));
  bool _isNameValidate = true;
  bool _isDateValidate = true;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  Widget _showDialog() {
    return AlertDialog(
      title: const Text('Check Data Kamu'),
      content: Container(
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nama : ${_nameController.text}"),
            Text("Tanggal Lahir : ${_dateController.text}"),
            Text("Jenis Kelamin : " + jkToString(_jk!)),
            Text("Bahasa Pemrograman Yang dikuasai : " + isiChkBox.join(', ')),
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

  void _selectDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime(2025),
    ).then((value) => (value != null
        ? setState(() {
            selectedDate = value;
            _dateController.text =
                DateFormat('d/MMM/y').format(selectedDate).toString();
            _isDateValidate = true;
          })
        : selectedDate = selectedDate));
  }

  void itemChange(bool val, int index) {
    setState(() {
      itemCheckBox[index].isCheck = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF212D3B),
        leading: Padding(
          padding: const EdgeInsets.only(left: 28),
          child: Icon(Icons.people),
        ),
        title: Text('Form Registrasi'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
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
                          _isNameValidate ? null : 'Nama tidak boleh kosong',
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
                    controller: _dateController,
                    decoration: InputDecoration(
                      label: Text(
                        'Tanggal Lahir',
                        style: headerText,
                      ),
                      errorText:
                          _isDateValidate ? null : 'Pilih Tanggal Lahir Kamu',
                    ),
                    readOnly: true,
                    onTap: () {
                      _selectDate();
                    },
                    onChanged: (value) {
                      setState(() {
                        value.isEmpty
                            ? _isDateValidate = false
                            : _isDateValidate = true;
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Jenis Kelamin',
                    style: headerText,
                  )
                ],
              ),
            ),
            ListView.builder(
              itemExtent: 35,
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: ListTile(
                    horizontalTitleGap: 0,
                    title: Text(jkToString(jenisKelamain.values[index])),
                    leading: Radio<jenisKelamain>(
                      value: jenisKelamain.values[index],
                      groupValue: _jk,
                      onChanged: (jenisKelamain? value) {
                        setState(() {
                          _jk = value;
                        });
                      },
                    ),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30),
              child: Text(
                'Bahasa Pemrograman yang Dikuasai',
                style: headerText,
              ),
            ),
            ListView.builder(
              itemExtent: 35,
              shrinkWrap: true,
              itemCount: itemCheckBox.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.only(left: 4.5),
                  child: CheckboxListTile(
                    value: itemCheckBox[index].isCheck,
                    controlAffinity: ListTileControlAffinity.leading,
                    title: Text(
                      itemCheckBox[index].title!,
                    ),
                    onChanged: (bool? val) {
                      itemChange(val!, index);
                    },
                  ),
                );
              },
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _nameController.text.isEmpty
                        ? _isNameValidate = false
                        : _isNameValidate = true;
                    _dateController.text.isEmpty
                        ? _isDateValidate = false
                        : _isDateValidate = true;
                  });
                  if (_isDateValidate && _isNameValidate) {
                    ambilCheckBox();
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => _showDialog(),
                    );
                  }
                },
                child: Text('Submit'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
