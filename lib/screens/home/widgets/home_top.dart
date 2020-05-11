import 'package:animations/screens/home/widgets/category_view.dart';
import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {

  final Animation<double> containerGrow;

  HomeTop({@required this.containerGrow});

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height*0.4,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpeg"),
            fit: BoxFit.cover
          ),
      ),
      child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Bem-vindo, Kauan",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  color: Colors.black
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                width: containerGrow.value*120,
                height: containerGrow.value*120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("images/tickicon.png"),
                      fit: BoxFit.cover
                  ),
                ),
                child: Container(
                  width: containerGrow.value*35,
                  height: containerGrow.value*35,
                  margin: EdgeInsets.only(left: 80),
                  child: Center(
                    child: Text("2",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: containerGrow.value*20,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black54
                  ),
                ),
              ),
              CategoryView()
            ],
          )
      ),
    );
  }
}
