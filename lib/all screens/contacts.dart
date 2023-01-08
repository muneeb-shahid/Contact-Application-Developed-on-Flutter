import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();
  List contacts = [
    {
      "name": "Muneeb",
      "number": "0300-2780952",
    },
    {
      "name": "Shakeeb",
      "number": "0321-2095182",
    },
    {
      "name": "Mubeen",
      "number": "0333-9710076",
    },
  ];

  add_Contacts_In_List(context) {
    setState(() {
      Navigator.pop(context);
      contacts.add({
        "name": name.text,
        "number": number.text,
      });
      name.clear();
      number.clear();
    });
    print(contacts);
  }

  edit_Contact_List(context, index) {
    setState(() {
      Navigator.pop(context);
      contacts[index] = {
        "name": name.text,
        "number": number.text,
      };
      name.clear();
      number.clear();
    });
    print(contacts);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contacts",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              )),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/dp icon.png"),
            ),
            title: Text("${contacts[index]['name']}"),
            subtitle: Text("${contacts[index]['number']}"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                    onPressed: () {
                      name.text = contacts[index]['name'];
                      number.text = contacts[index]['number'];
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                                title: Text(
                                  "Edit",
                                  style: TextStyle(color: Colors.black),
                                ),
                                content: Column(
                                  children: [
                                    TextFieldConstants_name(),
                                    SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02),
                                    TextFormField(
                                      controller: number,
                                      decoration: InputDecoration(
                                        labelText: "Enter your number",
                                        labelStyle: TextStyle(
                                          fontSize: 20,
                                          color: Colors.grey.shade900,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey, width: 2)),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            width: 4,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    child: Text("Done"),
                                    onPressed: () {
                                      edit_Contact_List(context, index);
                                    },
                                  )
                                ]);
                          });
                    },
                    icon: Icon(
                      Icons.edit,
                      color: Colors.blue,
                    )),
                IconButton(
                  onPressed: () {
                    setState(() {
                      contacts.removeAt(index);
                    });
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: contacts.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(
                    "Add",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  content: Column(
                    children: [
                      TextFieldConstants_name(),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02),
                      TextFormField(
                        controller: number,
                        decoration: InputDecoration(
                          labelText: "Enter your number",
                          labelStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.grey.shade900,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 2)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 4,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          add_Contacts_In_List(context);
                        },
                        child: Text(
                          "Add to contact list",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              backgroundColor: Colors.blue),
                        ))
                  ],
                );
              });
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }

  dynamic TextFieldConstants_name() {
    return TextFormField(
      controller: name,
      decoration: InputDecoration(
        labelText: "Enter your name",
        labelStyle: TextStyle(
          fontSize: 20,
          color: Colors.grey.shade900,
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 4,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
