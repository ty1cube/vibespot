// import 'dart:async';
import 'package:flutter/material.dart';

class CardInformationPage extends StatefulWidget {
  // static String tag = 'transfer-page';
  @override
 CardInformationPageState createState() => CardInformationPageState();
}

class CardInformationPageState extends State<CardInformationPage> {



  // startTime() async {
  //   var duration = new Duration(seconds: 5);
  //   return new Timer(duration, navigationPage);
  // }
  
  // void navigationPage() {
  //   Navigator.of(context).pushReplacementNamed("/HelpPage");
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   startTime();
  // }

 final cardInfoBar = AppBar(
       centerTitle: true,
        leading: Icon(Icons.arrow_back, size: 30.0, color: Colors.orange.shade700),
        title: Text("Add Card", style: TextStyle(color:Colors.orange.shade700, 
        fontFamily: "Poppins", fontSize: 25.0), 
        textAlign: TextAlign.center,),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(left: 5.0, right: 5.0),
            iconSize: 30.0,
            color: Colors.orange.shade700,
            icon: Icon(Icons.person),
            onPressed: () {

            },
          ),
        ],
        // icons: Icon(Icons.add),
        backgroundColor: Colors.black,
      ); 



   final cardHead = new Padding(
    padding: EdgeInsets.only(left: 5.0, right: 5.0),
    child: new Text(
      "Enter Card Information",
      style: new TextStyle(
        color: Colors.white,
        fontFamily: 'Poppins-Bold',
        fontSize: 25.0,
      ),
      textAlign: TextAlign.center,
    ),
  );


  final cardNumberField = TextField(
      keyboardType: TextInputType.text,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Card number',
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
      ),
    );



     final expireField = TextField(
      keyboardType: TextInputType.datetime,
      autofocus: false,
      // initialValue: 'john@gmail.com',
      decoration: InputDecoration(
        hintText: 'Expiry Date',
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
      ),
    );

    final cvvField = TextField(
      keyboardType: TextInputType.number,
      autofocus: false,
      // initialValue: 'john@gmail.com',
      decoration: InputDecoration(
        hintText: 'CVV',
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
      ),
    );


  
   final proceedButton = Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16.0),
        child: Material(
          borderRadius: BorderRadius.circular(50.0),
          shadowColor: Colors.black,
          elevation: 5.0,
          child: MaterialButton(
              minWidth: 200.0,
              height: 60.0,
              onPressed: (){
              } ,
              color: Colors.orange.shade700,
              child: Text(
                "PROCEED", 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  ),
              ),
          ),
        ),
    ); 


  @override
   Widget build(BuildContext context){
     return Scaffold(
      
      appBar: cardInfoBar,
      backgroundColor: Colors.black,
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
              SizedBox(height: 50.0),
              cardHead,
              SizedBox(height: 30.0),
              cardNumberField,
              SizedBox(height: 15.0),
              expireField,
              SizedBox(height: 15.0),
              cvvField,
              SizedBox(height: 30.0),
              proceedButton
          
            
          ]
        ),
      ),
      bottomNavigationBar: new BtnNavBarTab(),
     );
   }
 }



class BtnNavBarTab extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
  
     return new Theme(
    data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
        canvasColor: Colors.black,
        // sets the active color of the `BottomNavigationBar` if `Brightness` is light
        primaryColor: Colors.deepOrange.shade700,
        textTheme: Theme
            .of(context)
            .textTheme
            .copyWith(
              caption: new TextStyle(
                color: Colors.deepOrange.shade700, fontSize: 20.0),
                ),
                ), // sets the inactive color of the `BottomNavigationBar`
    child: new BottomNavigationBar(
      iconSize: 30.0,
      type: BottomNavigationBarType.fixed,
      currentIndex: 0,
      items: [
        new BottomNavigationBarItem(
          icon: new Icon(Icons.music_note),
          title: new Text("My Spot"),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.playlist_play),
          title: new Text("Vibestream"),
        ),
         new BottomNavigationBarItem(
          //backgroundColor: Colors.black,
          icon: Icon(Icons.supervisor_account),
          title: Text("My Account")
        ),
          new BottomNavigationBarItem(
          //backgroundColor: Colors.black,
          icon: Icon(Icons.search),
          title: Text("Search")
        ),
      ],
    ),
  );
   }
 }