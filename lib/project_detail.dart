import 'package:flutter/material.dart';
import 'package:flutter_demo/exampleModel.dart';

class ProjectDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProjectDetail();
  }
}

class _ProjectDetail extends State<ProjectDetail> {
  String _value = "one";
  double _heightItem = 80.0;
  
  List<Example> listExample = []
    ..add(Example("Task - 1", "SON - 1", 1))
    ..add(Example("Task - 2", "SON - 2", 99));
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color.fromRGBO(0, 82, 204, 1), //change your color here
        ),
        title: new Theme(
          child: new DropdownButtonHideUnderline(
            child: new DropdownButton<String>(
              iconEnabledColor: Color.fromRGBO(0, 82, 204, 1),
              style: TextStyle(
                  color: Color.fromRGBO(0, 82, 204, 1),
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
              value: _value,
              items: <DropdownMenuItem<String>>[
                new DropdownMenuItem(
                  child: new Text('Sơn'),
                  value: 'one',
                ),
                new DropdownMenuItem(
                  child: new Text('Death'),
                  value: 'two',
                ),
                new DropdownMenuItem(
                  child: new Text('SD'),
                  value: 'three',
                ),
              ],
              onChanged: (String value) {
                setState(() => _value = value);
              },
            ),
          ),
          data: Theme.of(context).copyWith(brightness: Brightness.light),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.filter_list,
              color: Color.fromRGBO(0, 82, 204, 1),
              size: 28,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.view_list,
              color: Color.fromRGBO(0, 82, 204, 1),
              size: 28,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              'images/home_screen/menu_3_dot.png',
              color: Color.fromRGBO(0, 82, 204, 1),
            ),
            onPressed: () {},
          )
        ],
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 0,
      ),
      body: Container(
        child: new ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 300.0,
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'TRONG TIẾN TRÌNH',
                          style: TextStyle(
                              color: Color.fromRGBO(23, 43, 77, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            '2',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Image.asset(
                            'images/home_screen/menu_3_dot.png',
                            color: Colors.grey,
                            fit: BoxFit.fitHeight,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 300.0,
                    height: _heightItem*listExample.length + 20,
                    child: ListView.builder(
                      itemCount: listExample.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 1.0,
                                spreadRadius: 1.0,
                                offset: Offset(
                                  0.5,
                                  0.5,
                                ),
                              )
                            ],
                          ),
                          height: _heightItem,
                          padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      listExample[index].title,
                                      style: TextStyle(
                                          color: Color.fromRGBO(23, 43, 77, 1),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.bookmark, color: Colors.lightGreen,),
                                    Text(
                                      listExample[index].subTitle,
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w300),
                                    ),
                                    Spacer(),
                                    Container(
                                      child: Text(
                                        listExample[index].numberTask.toString(),
                                        style: TextStyle(
                                          color: Color.fromRGBO(23, 43, 77, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300,

                                        ),

                                      ),
                                      decoration: new BoxDecoration (
                                          borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
                                          color: Color.fromRGBO(235, 236, 240, 1)
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 7),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  FlatButton(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                    padding: EdgeInsets.all(0),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.add, color: Color.fromRGBO(0, 82, 204, 1),),
                            onPressed: () {},
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Tạo',
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 82, 204, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                      onPressed: (){},
                    ),
                ],
              ),
              //color: Color.fromRGBO(244, 245, 247, 1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color.fromRGBO(244, 245, 247, 1),
              ),
            ),
            Container(
              width: 300.0,
              height: 300.0,
              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'CHỜ KIỂM TRA',
                          style: TextStyle(
                              color: Color.fromRGBO(23, 43, 77, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            '2',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Image.asset(
                            'images/home_screen/menu_3_dot.png',
                            color: Colors.grey,
                            fit: BoxFit.fitHeight,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color.fromRGBO(244, 245, 247, 1),
              ),
            ),
            Container(
              width: 300.0,
              height: 300.0,
              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'HOÀN THÀNH',
                          style: TextStyle(
                              color: Color.fromRGBO(23, 43, 77, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            '2',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          icon: Image.asset(
                            'images/home_screen/menu_3_dot.png',
                            color: Colors.grey,
                            fit: BoxFit.fitHeight,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),

                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color.fromRGBO(244, 245, 247, 1),
              ),
            ),
          ],
        ),
      )

    );
  }

  Widget horizontalList = new Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 200.0,
            color: Colors.red,
          ),
          Container(
            width: 200.0,
            color: Colors.grey,
          ),
        ],
      ));
}
