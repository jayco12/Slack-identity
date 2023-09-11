import 'package:flutter/material.dart';

import 'github.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.red, Colors.yellow, Colors.green])),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text('My Slack Identity'),
        ),
        body: SafeArea(
            child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
              height: 250,
              width: 250,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  'assets/Joseph.jpg',
                ),
              ),
            ),
            const Text(
              '@Joseph Oduyebo',
              style: TextStyle(fontSize: 30),
            ),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              color: const Color.fromARGB(255, 30, 30, 30),
              child: ListTile(
                leading: Image.asset('assets/github.png'),
                title: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Preview()));
                  },
                  child: const Text(
                    'Open Github',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
