import 'package:clone_tele/custom_font.dart';
import 'package:clone_tele/pages/form.dart';
import 'package:clone_tele/view/drawer_dark.dart';
import 'package:flutter/material.dart';
import '../models.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF212D3B),
        title: Text('Telegram'),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ),
        ],
      ),
      drawer: DrawerDark(),
      body: Container(
        color: Color(0xFF1D2733),
        child: ListView.separated(
          itemCount: items.length,
          separatorBuilder: (
            BuildContext context,
            int index,
          ) =>
              const Divider(
            color: Colors.black,
            height: 10,
          ),
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(items[index].imageUrl ?? '')),
              title: Transform.translate(
                child: Text(
                  items[index].name ?? 'Belum ada nama',
                  style: mainText,
                ),
                offset: Offset(-1, -3),
              ), //* Bisa pakai ! setelah name
              subtitle: Transform.translate(
                child: Text(items[index].message ?? 'Belum ada Pesan',
                    style: subText),
                offset: Offset(-1, 3),
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    items[index].time ?? '',
                    style: TextStyle(
                        color: Color(0xFFCECECE),
                        fontWeight: FontWeight.w300,
                        fontSize: 12),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF64B5EF),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(4),
                      child: Text(
                        items[index].numMess ?? '',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 14),
                      ),
                    ),
                  )
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyForm(
                      messages: items[index],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyForm(
                messages: Message(),
              ),
            ),
          );
        },
        child: Icon(Icons.create),
        backgroundColor: Color(0xFF5EA3DE),
      ),
    );
  }
}
