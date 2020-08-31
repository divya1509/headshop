import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:headshop/pages/contentList.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  ProductList data = new ProductList();
//  int _index = 0, _price = data.getPrice(0);
//  double _rating = 0;
//  String _name = '', _description = '';

//  void _setParameters(){
//    _index = _data.getIndex();
//    _price = _data.getPrice(_index);
//    _rating = _data.getRating(_index);
//    _name = _data.getName(_index);
//    _description = _data.getDescription(_index);
//  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
//        appBar: AppBar(
//          leading: IconButton(
//            icon: Icon(Icons.keyboard_arrow_left),
//            onPressed: () {
//              Navigator.pop(context);
//            },
//            color: Colors.black38,
//          ),
//          bottomOpacity: 0,
//          backgroundColor: Colors.transparent,
//        ),
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background3.png"),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//              _setParameters();
              Image(
                alignment: Alignment.topCenter,
                image: AssetImage('images/image0.png'),
                height: 300,
                width: 300,
              ),
              Text(
                'Product 1',
                style: TextStyle(
                  fontSize: 41,
                  color: Color(0xff3D317E),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Price : \$56',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              Text(
                'Ratings : 4.5★',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              Text(
                'This is the description for Product',
                style: TextStyle(
                  height: 5,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(left: 30, bottom: 5),
          child: SizedBox(
            height: 70,
            width: 300,
            child: FloatingActionButton.extended(
              onPressed: null,
              label: Text(
                'Order Now',
              ),
              icon: Icon(Icons.payment),
              backgroundColor: Color(0xff6C63FF),
            ),
          ),
        ),
      ),
    );
  }
}
