import 'package:flutter/material.dart';
import 'package:aaab/login.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({this.name = ""});
  String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "welcom :" + name,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Text("data", style: TextStyle(color: Colors.black, fontSize: 25)),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(225, 0, 0, 0),
        child: Column(
          children: [
            DrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 147, 255, 7),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/abb.png"),
                      radius: 50,
                    ),
                    Divider(
                      indent: 60,
                      endIndent: 60,
                      height: 3,
                      color: Colors.black,
                      thickness: 1,
                    ),
                    Text(
                      "Abd Elzeez Dammaj@gemail.com",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                )),
            Expanded(
                child: ListView(
              padding: EdgeInsets.zero,
              children: [
                buildListTile(context, "الواجب", Icon(Icons.home), MyHomePage()),
                buildListTile(context, "المحاضرات", Icon(Icons.login), MyHomePage())
              ],
            ),
            )
          ],
        ),
      ),
    );
  }

  buildListTile(
      BuildContext context, String s, Icon icon, MyHomePage MyHomePage) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: ListTile(
        title: Text("ali"),
        tileColor: Colors.white,
        leading: icon,
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => login(),
              ),
              (route) => false);

          //   MaterialPageRoute(
          //    builder: (context) => MyHomePage,
          //);
        },
      ),
    );
  }
}
