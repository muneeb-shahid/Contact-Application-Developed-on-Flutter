import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecentScreen_ListTile extends StatefulWidget {
  const RecentScreen_ListTile({super.key});

  @override
  State<RecentScreen_ListTile> createState() => _RecentScreen_ListTileState();
}

class _RecentScreen_ListTileState extends State<RecentScreen_ListTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: SingleChildScrollView(
            child: Row(
              children: [
                InkWell(
                  child: Text(
                    "All",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                InkWell(
                  child: Text(
                    "Missed",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              ],
            ),
          )),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                "A",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
              ),
            ),
            title: Text(
              "Ali",
              style: TextStyle(fontSize: 15),
            ),
            subtitle: Text(
              "2 min ago",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                "M",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
              ),
            ),
            title: Text(
              "Manzoor",
              style: TextStyle(fontSize: 15),
            ),
            subtitle: Text(
              "12 min ago",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            trailing: Icon(
              Icons.call,
              color: Colors.green,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                "A",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
              ),
            ),
            title: Text(
              "Araf",
              style: TextStyle(fontSize: 15),
            ),
            subtitle: Text(
              "25 min ago",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            trailing: Icon(
              Icons.call_end,
              color: Colors.red,
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                "Z",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
              ),
            ),
            title: Text(
              "Zain",
              style: TextStyle(fontSize: 15),
            ),
            subtitle: Text(
              "44 min ago",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            trailing: Icon(
              Icons.call_received,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
