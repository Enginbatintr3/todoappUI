import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class myTask extends StatelessWidget {
  String label;
  String text;
  myTask({this.label, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20, left: 20, bottom: 10, top: 10),
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Container(
        margin: EdgeInsets.all(20),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  text,
                  style: GoogleFonts.openSans(
                      color: Colors.grey.shade600, fontSize: 15),
                ),
                SizedBox(
                  width: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
