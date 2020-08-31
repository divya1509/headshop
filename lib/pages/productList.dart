import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:headshop/pages/contentList.dart';
import 'package:headshop/pages/productInfo.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  ProductList _data = new ProductList();

  void _openProductInfo(int index) {
    _data.setIndex(index);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Info()),
    );
  }

  _function(String productName, int price, double rating, int index) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 25, right: 30),
          child: Image.asset(
            'images/image$index.png',
            alignment: Alignment.centerLeft,
            height: 80,
            width: 80,
          ),
        ),
        FlatButton(
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(50.0)),
          color: Color(0xff6C63FF),
          onPressed: () {
            _openProductInfo(index);
          },
          child: Padding(
            padding: EdgeInsets.only(left: 20, bottom: 21),
            child: Row(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      productName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        height: 5,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      " \$$price",
                      style: TextStyle(color: Colors.lightBlueAccent),
                    ),
                    Text(
                      " $rating ★",
                      style: TextStyle(
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                ),
//                Spacer(
//                  flex: 1,
//                ),
                IconButton(
                  icon: Icon(Icons.keyboard_arrow_right),
                  alignment: Alignment.bottomRight,
                  color: Colors.white,
                  onPressed: () {
                    _openProductInfo(index);
                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(
        color: Color(0xffBDD6DC),
      ),
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            expandedHeight: 400.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Products'),
              background: Image(
                image: AssetImage('images/background2.png'),
                fit: BoxFit.fill,
              ),
              centerTitle: true,
            ),
            backgroundColor: Color(0xffBDD6DC),
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100))),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Color(0xffBDD6DC),
                  ),
//                  color: Colors.white,
                  child: _function(_data.getName(index), _data.getPrice(index),
                      _data.getRating(index), index),
                  padding:
                      EdgeInsets.only(left: 24, right: 24, top: 12, bottom: 12),
                );
              },
              childCount: 6,
            ),
          ),
        ],
      ),
    ));
  }
}
