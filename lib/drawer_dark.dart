import 'package:clone_tele/custom_font.dart';
import 'package:clone_tele/main.dart';
import 'package:flutter/material.dart';

class DrawerDark extends StatefulWidget {
  @override
  _DrawerDarkState createState() => _DrawerDarkState();
}

class _DrawerDarkState extends State<DrawerDark> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Color(0xFF1C242F),
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xff212d3b)),
              accountName: Text('Achmad Yusuf Bagus Setiawan'),
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    NetworkImage('http://placeimg.com/640/480/nature'),
              ),
              accountEmail: Row(
                children: [
                  Text(
                    "+628912345678",
                    style: subText2,
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  SizedBox(
                    height: 30,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Edit",
                          style: subText2,
                        )),
                  )
                ],
              )),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.group_outlined, color: Colors.grey),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'New Group',
                  style: mainText,
                )
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.person_outline, color: Colors.grey),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Contacts',
                  style: mainText,
                )
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.call_outlined, color: Colors.grey),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Calls',
                  style: mainText,
                )
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.near_me_outlined, color: Colors.grey),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'People Nearby',
                  style: mainText,
                )
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.bookmark_outline, color: Colors.grey),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Saved Messages',
                  style: mainText,
                )
              ],
            ),
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.settings_outlined, color: Colors.grey),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Settings',
                  style: mainText,
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
