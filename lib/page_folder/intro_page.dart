import 'package:flutter/material.dart';
import '../nameInput_page.dart';

import 'package:rflutter_alert/rflutter_alert.dart';

List<Map<String, dynamic>> myContainerItem = [
  {
    'title': "a",
    'color': Colors.cyan,
  },
  {
    'title': 'b',
    'color': Colors.blue,
  },
  {
    'title': 'c',
    'color': Colors.yellow,
  },
  {
    'title': 'd',
    'color': Colors.red,
  },
];

// List<String> myContainers = [
//   'a',
//   'b',
//   'c',
//   'd',
// ];
//
// List<Color> myColors = [
//   Colors.cyan,
//   Colors.blue,
//   Colors.yellow,
//   Colors.red,
// ];

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  List<Widget> getContainer() {
    List<Widget> containerList = [];

    for (int i = 0; i < myContainerItem.length; i++) {
      String myText = myContainerItem[i]['title'];
      Color myColor = myContainerItem[i]['color'];

      var newItem = Container(
        color: myColor,
        height: 16.0,
        width: double.maxFinite,
        child: Text(myText),
      );

      containerList.add(newItem);
    }
    return containerList;
  }

  String kUserName = '';
  TextEditingController theUserName =
      TextEditingController();

  theUsernameState() {
    kUserName = theUserName.text;
    if (kUserName != '') {
      setState(() {
        kUserName = theUserName.text;
      });
    } else {
      kUserName = '';
    }
  }

  nextPageProceed() {
    if (kUserName.length < 4 ||
        kUserName.isEmpty ||
        kUserName.length > 12) {
      Alert(
        style: const AlertStyle(
            backgroundColor: Colors.cyanAccent),
        context: context,
        type: AlertType.error,
        title: "Invalid Name",
        desc: "Enter a valid name",
        buttons: [
          DialogButton(
            onPressed: () {
              setState(() {
                theUserName.clear();
                kUserName = '';
                Navigator.pop(context);
              });
            },
            width: 120,
            child: const Text(
              "Enter name",
              style: TextStyle(
                  color: Colors.white, fontSize: 20),
            ),
          )
        ],
      ).show();
    } else {
      Navigator.pushNamed(
        context, '/second',
        // arguments: ScreenTwoArguments(
        //     name: kUserName, pageHeight: 20.0)
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Math app'),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            Column(
              children: [
                Text(
                  'Hello $kUserName',
                  style: const TextStyle(
                    fontSize: 36.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                HomeInputField(
                    theUserName: theUserName,
                    getUserName: () {
                      setState(() {
                        theUsernameState();
                      });
                    }),
                const SizedBox(
                  height: 24.0,
                ),
                Column(
                  children: getContainer(),
                ),
                GestureDetector(
                  onTap: () {
                    nextPageProceed();
                  },
                  child: Container(
                    width: double.infinity,
                    height: 56.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.lightGreenAccent,
                    ),
                    child: const Center(
                      child: Text('Proceed'),
                    ),
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}

// class ScreenTwoArguments {
//   final String? name;
//   final double? pageHeight;
//   final int? pagePadding;
//
//   ScreenTwoArguments(
//       {required this.name,
//       required this.pageHeight,
//       this.pagePadding});
// }
