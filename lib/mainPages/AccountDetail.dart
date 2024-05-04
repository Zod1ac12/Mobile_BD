import 'package:flutter/material.dart';

class AccountDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Details'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'User Information',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            ListTile(
              title: Text('Name'),
              subtitle: Text('John Doe'),
            ),
            ListTile(
              title: Text('Email'),
              subtitle: Text('johndoe@example.com'),
            ),
            ListTile(
              title: Text('Phone'),
              subtitle: Text('+1234567890'),
            ),
            Divider(),
            Text(
              'Account Information',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            ListTile(
              title: Text('Membership Level'),
              subtitle: Text('Gold'),
            ),
            ListTile(
              title: Text('Subscription Status'),
              subtitle: Text('Active'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AccountDetailScreen(),
  ));
}
