import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Group extends StatefulWidget {
  const Group({super.key});

  @override
  State<Group> createState() => _GroupState();
}

class _GroupState extends State<Group> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Group",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Color.fromARGB(255, 174, 237, 176)),
                      child: Column(
                        children: [
                          ListTile(
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 38,
                          ),
                          ListTile(
                            title: Text(
                              "Family",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900),
                            ),
                            subtitle: Text(
                              "16 members",
                              style: TextStyle(color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Colors.pink.shade100),
                      child: Column(
                        children: [
                          ListTile(
                            trailing: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.add),
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 38,
                          ),
                          ListTile(
                            title: Text(
                              "Friends",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900),
                            ),
                            subtitle: Text(
                              "24 members",
                              style: TextStyle(color: Colors.black),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.pink.shade100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 1, vertical: 1),
                      child: ListTile(
                        leading: Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 1),
                      child: Text(
                        "New Group",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                title: Text(
                  "Favourite",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(
                    "M",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w800),
                  ),
                ),
                title: Text(
                  "MS Dhoni",
                  style: TextStyle(fontSize: 15),
                ),
                subtitle: Text(
                  "Office",
                  style: TextStyle(fontSize: 13),
                ),
                trailing: Icon(
                  Icons.favorite,
                  color: Colors.pink.shade600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(
                    "V",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w800),
                  ),
                ),
                title: Text(
                  "Virat Kholi",
                  style: TextStyle(fontSize: 15),
                ),
                subtitle: Text(
                  "Home",
                  style: TextStyle(fontSize: 13),
                ),
                trailing: Icon(
                  Icons.favorite,
                  color: Colors.pink.shade600,
                ),
              ),
            ),
            InkWell(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        size: 30,
                      ),
                      color: Colors.blue,
                    ),
                    Text(
                      "Add Favourite",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            )
          ]),
        ));
  }
}
