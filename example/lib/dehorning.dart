import 'package:flutter/material.dart';
//import 'ditsikiya.dart';

//import 'calving.dart';




class DehorningPage extends StatefulWidget {
  int _radioValue1 = -1;



 static String tag = 'dehorning-page';
  @override
  _DehorningPageState createState() => new _DehorningPageState();
}




class _DehorningPageState extends State<DehorningPage> {
  String message,profession,name;
  int _index = 0;
  @override
  Widget build(BuildContext context) {



    return new Scaffold(
      appBar: _appBar(),



body:  Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
    Text(

      'Mobile Recharge',
      style: TextStyle(fontSize: 20.0, color: Colors.black54,fontWeight: FontWeight.bold,   fontFamily: 'Open Sans',

      ),
      textAlign: TextAlign.center,
    ),

    new Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        new Radio(
          value: 0,
          //groupValue: _radioValue1,
         // onChanged: _handleRadioValueChange1,
        ),
        new Text(
          'Prepaid',
          style: new TextStyle(fontSize: 16.0),
        ),
        new Radio(
          value: 1,
         // groupValue: _radioValue1,
          //onChanged: _handleRadioValueChange1,
        ),
        new Text(
          'Postpaid',
          style: new TextStyle(
            fontSize: 16.0,
          ),
        ),

      ],
    ),
      new Container(

   child: new TextField(
      decoration: InputDecoration(
          hintText: 'Enter Mobile Number'), style: new TextStyle(
        fontSize: 18.0,
        height: 1.5,
        color: Colors.black
    )
    ),
      ),
  ],
),



      bottomNavigationBar: _bottemTab(),


    );

  }


  Widget _appBar() {
    return new AppBar(
      title: Row(

        children: <Widget>[

          //Icon(Icons.dehaze),
          // new Text("Novero", textAlign: TextAlign.center),


          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 0.5,),



            child: Text(
              'Pay for phone',
              style: TextStyle(fontSize: 20.0, color: Colors.white,fontWeight: FontWeight.bold,),
              textAlign: TextAlign.left,
            ),
          ),

          //Icon(Icons.search),
          //Icon(Icons.account_balance_wallet),




          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 60,),

            child:Icon(Icons.search),


          ),


        ],
      ),
      elevation: 0,

    );
  }
  final z1 = Padding(
    padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0,),
    child: Text(

      'Mobile Recharge',
      style: TextStyle(fontSize: 20.0, color: Colors.black,fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    ),


  );
  Widget _bottemTab() {
    return new BottomNavigationBar(
      //currentIndex: 0,
      currentIndex: _index,
      onTap: (int index) => setState(() => _index = index),
      type: BottomNavigationBarType.fixed,
      items: [
        new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home',style: TextStyle(color: Colors.black),)),
        new BottomNavigationBarItem(
            icon: Icon(Icons.pages),
            title: Text(
              'Mall',style: TextStyle(color: Colors.black),)),
        new BottomNavigationBarItem(
            icon: Icon(Icons.folder),

            title: Text('Scan',style: TextStyle(color: Colors.black),)),
        new BottomNavigationBarItem(
            icon: Icon(Icons.local_mall),
            title: Text(
              'Shopping',style: TextStyle(color: Colors.black),)),
        new BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text(
              'Profile',style: TextStyle(color: Colors.black),)),
      ],);
  }


}



