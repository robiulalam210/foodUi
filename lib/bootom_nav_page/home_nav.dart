import 'package:flutter/material.dart';

class HomeNav extends StatelessWidget {
  const HomeNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
          SliverAppBar(
          expandedHeight: 200,
          backgroundColor: Colors.cyanAccent,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Mobile Apps Devlopment"),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              ListTile(
                title: Text("Robiul Alam"),
                subtitle: Text(" 01610290210"),
                leading: Icon(Icons.call),
                trailing: Icon(Icons.mail),
              ),
              ListTile(
                title: Text("Robiul Alam"),
                subtitle: Text(" 01610290210"),
                leading: Icon(Icons.call),
                trailing: Icon(Icons.mail),
              ),
              ListTile(
                title: Text("Robiul Alam"),
                subtitle: Text(" 01610290210"),
                leading: Icon(Icons.call),
                trailing: Icon(Icons.mail),
              ),
              ListTile(
                title: Text("Robiul Alam"),
                subtitle: Text(" 01610290210"),
                leading: Icon(Icons.call),
                trailing: Icon(Icons.mail),
              ),
              ListTile(
                title: Text("Robiul Alam"),
                subtitle: Text(" 01610290210"),
                leading: Icon(Icons.call),
                trailing: Icon(Icons.mail),
              ),
              ListTile(
                title: Text("Robiul Alam"),
                subtitle: Text(" 01610290210"),
                leading: Icon(Icons.call),
                trailing: Icon(Icons.mail),
              ),
              ListTile(
                title: Text("Robiul Alam"),
                subtitle: Text(" 01610290210"),
                leading: Icon(Icons.call),
                trailing: Icon(Icons.mail),
              ),
              ListTile(
                title: Text("Robiul Alam"),
                subtitle: Text(" 01610290210"),
                leading: Icon(Icons.call),
                trailing: Icon(Icons.mail),
              ),
              ListTile(
                title: Text("Robiul Alam"),
                subtitle: Text(" 01610290210"),
                leading: Icon(Icons.call),
                trailing: Icon(Icons.mail),
              ),
              ListTile(
                title: Text("Robiul Alam"),
                subtitle: Text(" 01610290210"),
                leading: Icon(Icons.call),
                trailing: Icon(Icons.mail),
              ),
              ListTile(
                title: Text("Robiul Alam"),
                subtitle: Text(" 01610290210"),
                leading: Icon(Icons.call),
                trailing: Icon(Icons.mail),
              ),
              ListTile(
                title: Text("Robiul Alam"),
                subtitle: Text(" 01610290210"),
                leading: Icon(Icons.call),
                trailing: Icon(Icons.mail),
              ),
              ListTile(
                title: Text("Robiul Alam"),
                subtitle: Text(" 01610290210"),
                leading: Icon(Icons.call),
                trailing: Icon(Icons.mail),
              ),
              ListTile(
                title: Text("Robiul Alam"),
                subtitle: Text(" 01610290210"),
                leading: Icon(Icons.call),
                trailing: Icon(Icons.mail),
              ),
              ListTile(
                title: Text("Robiul Alam"),
                subtitle: Text(" 01610290210"),
                leading: Icon(Icons.call),
                trailing: Icon(Icons.mail),
              ),
              ListTile(
                title: Text("Robiul Alam"),
                subtitle: Text(" 01610290210"),
                leading: Icon(Icons.call),
                trailing: Icon(Icons.mail),
              ),
            ]))],
    )
    ,
    );
  }
}
