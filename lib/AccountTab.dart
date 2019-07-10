import 'package:flutter/material.dart';
import 'package:flutter_demo/project_detail.dart';

class AccountTab extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _AccountTab();
  }
}

class _AccountTab extends State<AccountTab> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        title: Text('Tài khoản',
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
      body: Text('Tài khoản'
      ),
    );
  }

}