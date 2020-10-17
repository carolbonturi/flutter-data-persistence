import 'package:flutter/material.dart';

import 'contact_form.dart';

class ContactsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text('Alex', style: TextStyle(
                fontSize: 16.0,
              ),),
              subtitle: Text('1000'),
            )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ContactForm())).then((newContact) => print(newContact.toString()));
        },
        child: Icon(
          Icons.add,
        )
      ),
    );
  }
}
