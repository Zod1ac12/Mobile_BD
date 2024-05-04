// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:moneyapp_speed_code/mainPages/AccountDetail.dart';
import 'package:moneyapp_speed_code/mainPages/BankAccount.dart';
import 'package:moneyapp_speed_code/mainPages/FAQ.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.all(25),
            child: Text(
              "Миний Бүртгэл",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 15),
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/profileImage.webp'),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 15),
              child: Text(
                "Сайн байна уу",
                style: TextStyle(
                    color: Colors.grey[500],
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              )),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.fromLTRB(15, 25, 15, 0),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                ListTile(
                  leading: Icon(
                  Icons.person,
                  size: 22,
                  color: Colors.greenAccent,
                ),
                title: Text("Миний Бүртгэл"),
                onTap: () {
                  // Navigate to the desired screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountDetailScreen()),
                  );
                },
                trailing: Icon(Icons.arrow_forward_ios),
              ),

                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.payment_outlined,
                    size: 22,
                    color: Colors.greenAccent,
                  ),
                  title: Text("Дансны дэлгэрэнгүй"),
                  onTap: () {
                  // Navigate to the desired screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BankAccountScreen()),
                  );
                },
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.loyalty,
                    size: 22,
                    color: Colors.greenAccent,
                  ),
                  title: Text("Миний захиалга"),

                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.group,
                    size: 22,
                    color: Colors.greenAccent,
                  ),
                  title: Text("Referrer Program"),

                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    Icons.question_answer,
                    size: 22,
                    color: Colors.greenAccent,
                  ),
                  title: Text("Асуулт хариулт"),
                  onTap: () {
                  // Navigate to the desired screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FAQScreen()),
                  );
                },
                  trailing: Icon(Icons.question_mark),
                ),
                Divider(),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.redAccent)),
              onPressed: () {},
              child: Text(
                "Гарах",
                style: TextStyle(color: Colors.white),
                
              ),
            ),
          ),
        )
      ],
    ));
  }
}
