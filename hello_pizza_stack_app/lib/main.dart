import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Stack',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Stack'),
          ),
          body: Home(),
        ));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    return Container(
      width: sizeX,
      height: sizeY,
      child: Stack(
        // verticalDirection: VerticalDirection.up,
        // textDirection: TextDirection.rtl,
        children: showPizzaLayout(sizeX, sizeY),
      ),
    );
  }

  List<Widget> showPizzaLayout(double sizeX, double sizeY) {
    List<Widget> layoutChildren = List<Widget>();
    Container backGround = Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("http://bit.ly/pizzaimage"),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
    layoutChildren.add(backGround);
    Positioned pizzaCard = Positioned(
      top: sizeY / 20,
      left: sizeX / 20,
      child: Card(
          elevation: 12,
          color: Colors.white70,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Text(
                "Pizza Margherita",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange[800]),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  "This delicious pizza is made of Tomato, \n Mozzarell and Basil. \n\n Seriously you can't miss it",
                  style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                ),
              )
            ],
          )),
    );

    layoutChildren.add(pizzaCard);
    Positioned buttonOrder = Positioned(
      bottom: sizeY / 20,
      left: sizeX / 20,
      width: sizeX - sizeX / 10,
      child: RaisedButton(
        elevation: 12,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        color: Colors.orange[900],
        child: Text(
          "Order Now!",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        onPressed: () {},
      ),
    );
    layoutChildren.add(buttonOrder);
    return layoutChildren;
  }
}
