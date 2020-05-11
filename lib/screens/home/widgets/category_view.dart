import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {

  final List<String> category = [
    'Estudar',
    'Casa',
    'Trabalho'
  ];

  int _x=0;

  void selectForward(){
    setState(() {
      _x++;
    });
  }

  void selectBackward(){
    setState(() {
      _x--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          color: Color.fromRGBO(239, 235, 233, 1.0) ,
          disabledColor: Colors.black54,
          iconSize: 30,
          onPressed:_x>0 ? selectBackward : null,
        ),
        Expanded(
          child: Text(
           category[_x],
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(239, 235, 233, 1.0),
              fontWeight: FontWeight.w500,
              fontSize: 30,
            ),
          ),
        ),
        IconButton(
          onPressed: _x < category.length - 1 ?
          selectForward :
          null,
          icon: Icon(Icons.arrow_forward_ios,
          ),
          iconSize: 30,
          color: Color.fromRGBO(239, 235, 233, 1.0),
          disabledColor: Colors.black54,
        )
      ],
    );
  }
}
