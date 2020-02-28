import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ListView',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Contacts'),
          ),
          body: Home(),
        ));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    return Container(
      width: sizeX,
      height: sizeY,
      child: ListView(
        children: showContacts(),
      ),
    );
  }
}

List<Contact> buildContacts() {
  List<Contact> contacts = List<Contact>();

  contacts
      .add(Contact("Thomas Anderson", "The Matrix", Icons.sentiment_neutral));
  contacts
      .add(Contact("Frank Slade", "Scent of a Woman", Icons.sentiment_neutral));
  contacts.add(Contact("Mildred Hayes",
      "Three Billboards Outside Ebbong, Missouri", Icons.sentiment_neutral));
  contacts
      .add(Contact("Bruce Wayne", "The Dark Night", Icons.sentiment_neutral));
  contacts
      .add(Contact("Jamal Malik", "The Millionaire", Icons.sentiment_neutral));
  return contacts;
}

List<ListTile> showContacts() {
  List<Contact> contacts = buildContacts();
  for (int i = 0; i < 20; i++) {
    contacts.addAll(buildContacts());
  }
  List<ListTile> list = List<ListTile>();
  contacts.forEach((contact) {
    list.add(ListTile(
      title: Text(contact.name),
      subtitle: Text(contact.subtitle),
      leading: CircleAvatar(
        child: Icon(contact.icon),
        backgroundColor: Colors.amber[600],
      ),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: () => true,
    ));
  });
  return list;
}

class Contact {
  String name;
  String subtitle;
  IconData icon;
  Contact(this.name, this.subtitle, this.icon);
}
