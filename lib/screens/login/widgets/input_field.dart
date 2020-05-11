import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  final String hint;
  final bool obscure;
  final IconData icon;
  final Color color;

  InputField({this.hint,this.obscure,this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.white,
            width: 0.5,
          )
        )
      ),
      child: TextFormField(
        obscureText: obscure,
        style: TextStyle(color: color),
        decoration: InputDecoration(
          icon: Icon(icon, color: color),
          border: InputBorder.none,
          hintText: hint,
          hintStyle: TextStyle(
            color: color,
            fontSize: 25
          ),
          contentPadding: EdgeInsets.only(
            top: 30,
            right: 30,
            left: 5,
            bottom: 30
          )
        ),
      ),
    );
  }
}
