import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:headshop/pages/productList.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _nextStep() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Products()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.teal[100],
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background1.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Column(
                children: <Widget>[
                  Text(
                    'Hear What You Want',
                    style: TextStyle(
                      color: Color(0xff3D317E),
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  FloatingActionButton.extended(
                    onPressed: () {
                      setState(() {
                        _nextStep();
                      });
                    },
//                    icon: Icon(Icons.keyboard_arrow_right),
                    elevation: 3,
                    backgroundColor: Colors.white,
                    shape: CircleBorder(),
                    label: Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff6C63FF),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
