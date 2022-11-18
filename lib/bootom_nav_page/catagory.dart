import 'package:flutter/material.dart';

class Catagory extends StatelessWidget {
  const Catagory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.20,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Mobile"),
              background: Image.network(
                  "https://images.pexels.com/photos/39866/entrepreneur-startup-start-up-man-39866.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
