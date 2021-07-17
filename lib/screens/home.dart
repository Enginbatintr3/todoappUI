import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_x/screens/add.dart';
import 'package:todo_x/utils/myTask.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List labels = [
    "Flutter Best Language",
    "My Notes App UI",
    "Flutter Is Good UI Kit",
    "Best Developers"
  ];
  List texts = [
    "I am Flutter Developer",
    "Flutter Is Amazing Language",
    "Better Than Kotlın",
    "React JS Falan Filan "
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                  width: 100,
                  height: 100,
                  image: AssetImage("assets/images/logo.png"),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Notes App | By Engin",
                  style: GoogleFonts.lato(
                      color: Colors.indigo,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: labels.length,
                itemBuilder: (context, index) {
                  return myTask(
                    label: labels[index],
                    text: texts[index],
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Add(),
                    ),
                  );
                },
                child: Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.indigo,
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
