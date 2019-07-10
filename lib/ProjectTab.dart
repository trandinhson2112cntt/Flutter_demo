import 'package:flutter/material.dart';
import 'package:flutter_demo/project_detail.dart';

class ProjectTab extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _ProjectTab();
  }
}

class _ProjectTab extends State<ProjectTab> {

  final List<String> _items = <String>['Sơn', 'Death'];
  final List<String> _icons = <String>[
    'images/home_screen/icon1.png',
    'images/home_screen/icon2.png'
  ];


  void _push() {
    Navigator.of(context).push(MaterialPageRoute(
      // we'll look at ColorDetailPage later
      builder: (context) => ProjectDetail(

      ),
    ));
  }

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15, left: 15),
            child: Text(
              'Đã xem gần đây',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) {
                return ListTile(
                    onTap: _push,
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
                              color: Color.fromRGBO(23, 43, 77, 1)),
                        ),
                        Text(
                          _items[index],
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              color: Color.fromRGBO(123, 126, 130, 1)),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      icon: Image.asset(
                        'images/home_screen/menu_3_dot.png',
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ));
              },
            ),
          )
        ],
      ),

    );
  }

}