import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'Ramani Hitesh Flutter Course : AlertDialog Example '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.deepOrange,

        title: Text(widget.title),
      ),


      body: Center(


        child: RaisedButton(
          color: Colors.cyan,
          onPressed: (){

            _showDialog();

          },

          child: Text("Click",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24
          ),),

        ),

      ),

    );
  }


  _showDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,  //sadece butonlara basınca ekrandan çıkıyor
      builder: (BuildContext context) {

        return AlertDialog(



          shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(20.0)),

          title: Text("Are you sure you want to delete?"),
          content: Text("Hello world"),

          actions: <Widget>[


            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: MaterialButton(
                shape: StadiumBorder(),
                minWidth: 100,
                color: Colors.pinkAccent,
                child: new Text("Yes"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),

            MaterialButton(
              shape: StadiumBorder(),
              minWidth: 100,
              color: Colors.pinkAccent,
              child: new Text("NO"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),

          ],
        );
      },
    );
  }

}
