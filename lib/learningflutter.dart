import 'package:flutter/material.dart';

class LearnFlutter extends StatefulWidget {
  const LearnFlutter({super.key});

  @override
  State<LearnFlutter> createState() => _LearnFlutterState();
}

class _LearnFlutterState extends State<LearnFlutter> {
  bool isSwitch = false;
  bool? isCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Image.asset('images/COMPANY LOGO.jpg'),
          const SizedBox(
            height: 75,
          ),
          const Divider(
            color: Colors.yellow,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            color: Colors.lightBlue,
            width: double.infinity,
            child: const Center(
              child: Text(
                'This us a test widget',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: isSwitch ? Colors.green : Colors.blue,
            ),
            onPressed: () {
              debugPrint('Elevated Button Pressed');
            },
            child: const Text('Elevated Button'),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint('Outlined Button Pressed');
            },
            child: const Text('OUTLINED BUTTON'),
          ),
          TextButton(
            onPressed: () {
              debugPrint('Text Button');
            },
            child: const Text('TEXT BUTTON PRESSED'),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint('Row Button Pressed');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.local_fire_department,
                  color: Colors.red,
                ),
                Text('Row Widget'),
                Icon(
                  Icons.local_fire_department,
                  color: Colors.lightBlueAccent,
                ),
              ],
            ),
          ),
          Switch(
              value: isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  isSwitch = newBool;
                });
              }),
          Checkbox(
              value: isCheckBox,
              onChanged: (bool? newBool) {
                setState(() {
                  isCheckBox = newBool;
                });
              })
        ],
      ),
    );
  }
}
