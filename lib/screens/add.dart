import 'package:flutter/material.dart';
import 'package:flutter_button/3d/3d_button.dart';
import 'package:todo_x/utils/field.dart';

class Add extends StatefulWidget {
  const Add({Key key}) : super(key: key);

  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  TextEditingController title = TextEditingController();
  TextEditingController note = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                  bottom: 100, top: 100, right: 80, left: 80),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.indigo.withOpacity(.5),
                    offset: const Offset(10, 15),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Add Your Note",
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  myMethod(title, "Enter Your Note Title"),
                  const Divider(
                    height: 50,
                    color: Colors.black,
                  ),
                  myMethod(note, "Enter Your Note"),
                  const SizedBox(
                    height: 15,
                  ),
                  Button3D(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Center(
                        child: Text("Enter"),
                      )),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
