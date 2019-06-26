import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   child: Text('header'.toUpperCase()),
          //   decoration: BoxDecoration(
          //     color: Colors.grey[100]
          //   ),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text('Zoro', style: TextStyle(
              fontWeight: FontWeight.bold
            )),
            accountEmail: Text('1234567890@qq.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://img3.doubanio.com/img/songlist/large/43528-1.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image: NetworkImage('https://img3.doubanio.com/img/files/file-1557376620-0.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.yellow[400].withOpacity(0.5),
                  BlendMode.hardLight
                )
              )
            ),
          ),
          ListTile(
            title: Text('Message', textAlign: TextAlign.right,),
            trailing: Icon(Icons.message, color: Colors.black12, size: 22.0,),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite', textAlign: TextAlign.right,),
            trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0,),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Settings', textAlign: TextAlign.right,),
            trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0,),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
