import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  RoundButton({required this.c, required this.func, required this.title});

  final Color c;
  final Function func;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: c,
        // Colors.lightBlueAccent
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            func();
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
