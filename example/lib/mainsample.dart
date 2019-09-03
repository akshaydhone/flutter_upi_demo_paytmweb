import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'dataStore.dart';
import 'artificial_insemination.dart';
//import 'pregnancy.dart';
//import 'calving.dart';
//import 'treatment.dart';
//import 'vaccination.dart';
//import 'operation.dart';
//import 'sample.dart';
//import 'tag-retag.dart';
import 'dehorning.dart';
import 'ditsikiya.dart';
import 'payment.dart';
import 'settings.dart';
//import 'postmortem.dart';


void main() => runApp(MyApp(
));
class MainPage extends StatefulWidget{
  final String title;

  MainPage({this.title}):super();
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MainPageState();
  }
}

class MainPageState extends State<MainPage>{
  int _index = 0;




  @override
  Widget build(BuildContext context) {

    //var pages=[AIPage(),PDPage(),CalvingPage(),TreatmentPage(),VaccinationPage(),OperationPage(),SamplingPage(),TagPage(),DehorningPage(),DistokiyaPage(),PostmortemPage()];
    //MainPageState({Keykey, this.todos}) : super(key: key);

    // TODO: implement build
    return new Scaffold(
      appBar: _appBar(),



      body: new GridView.extent(maxCrossAxisExtent: 130.0,
        mainAxisSpacing: 32.5,
        crossAxisSpacing: 20.5,

        padding: const EdgeInsets.all(5.0),
        children: _buildGridTiles(9),
      ),


      bottomNavigationBar: _bottemTab(),


    );



  }


  Widget _appBar() {
    return new AppBar(
      title: Row(

        children: <Widget>[

          Icon(Icons.dehaze),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 85.0,),



            child: Text(
              'Webcubic',
              style: TextStyle(
                fontSize: 20.0, color: Colors.white,fontWeight: FontWeight.bold,),
              textAlign: TextAlign.center,
            ),
          ),


          Icon(Icons.account_balance_wallet),


        ],

      ),

      elevation: 0,

    );
  }

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









List<Widget> _buildGridTiles(numberOfTiles)
{

  List<Stack>containers=new List<Stack>.generate(numberOfTiles,
          (int index){


        var pages=[AIPage(),DistokiyaPage(),DehorningPage(),Payment(),AIPage(),AIPage(),AIPage(),AIPage(),AIPage(),AIPage(),AIPage()];


        final  imageName=index < 9 ?

        'assets/i${index+1}.PNG' : 'assets/i${index+1}.PNG' ;
        return new Stack(




          alignment: const Alignment(0.0, 1.90),



          children: <Widget>[









            new Scaffold(
              body: ListView.builder(
                itemCount: imageName.length,
                itemBuilder: (context, imageName) {

                  //var title;
                  return ListTile(
                    title: new Image.asset( 'assets/i${index+1}.PNG',
                      width: 130,
                      height: 130,
                      fit: BoxFit.contain,

                    ),
                    // When a user taps on the ListTile, navigate to the DetailScreen.
                    // Notice that we're not only creating a DetailScreen, we're
                    // also passing the current todo through to it!
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => pages[index]
                        ),






                      );

                    },


                  );

                },




              ),


            ),




















            new Container(
              padding: const EdgeInsets.all(5.0),

              child:new Text(storeItems[index].itemName,style: new TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,

                color: Colors.black,

              ),) ,
            ),







          ],

        );

      });


  return containers;

}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  Color c =  Color.fromRGBO(66, 165, 245, 1.0);





  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:Colors.purple,
      ),

      home: new MainPage(title: "Webcubic"),
    );
  }


}

