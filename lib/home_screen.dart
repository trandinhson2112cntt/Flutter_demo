import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  final List<String> _items = <String>['Sơn', 'Death'];
  final List<String> _icons = <String>[
    'images/home_screen/icon1.png',
    'images/home_screen/icon2.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        appBar: AppBar(
          title: Text('Dự án',
              style: TextStyle(color: Color.fromRGBO(23, 43, 77, 1))),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Color.fromRGBO(0, 82, 204, 1),
                size: 28,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.add,
                color: Color.fromRGBO(0, 82, 204, 1),
                size: 28,
              ),
              onPressed: () {},
            )
          ],
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          elevation: 5,
        ),

        /*body: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: Image(
                  image: AssetImage(_icons[index]),
                  fit: BoxFit.fitHeight,
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      _items[index],
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(23, 43, 77, 1)
                      ),
                    ),
                    Text(
                      _items[index],
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Color.fromRGBO(123, 126, 130, 1)
                      ),
                    ),
                  ],
                ),
                trailing: Icon(Icons.menu));
          },
        ),*/
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
          items: [
            BottomNavigationBarItem(
              icon:new Icon(Icons.home),
                title: Text('Home')
            ),
            BottomNavigationBarItem(
              icon:
              new Icon(Icons.rss_feed),
                title: Text('Home')
            ),
            BottomNavigationBarItem(
              icon:
              new Icon(Icons.perm_identity),
                title: Text('Home')
            ),
            BottomNavigationBarItem(
              icon:
              new Icon(Icons.settings),
                title: Text('Home')
            )
          ]
      ),
    );
  }
}
