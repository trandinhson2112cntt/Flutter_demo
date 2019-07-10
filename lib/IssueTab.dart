import 'package:flutter/material.dart';
import 'package:flutter_demo/project_detail.dart';

class IssueTab extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _IssueTab();
  }
}

class _IssueTab extends State<IssueTab> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        title: Text('Vấn đề',
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
              'Vấn đề',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ),

        ],
      ),

    );
  }

}