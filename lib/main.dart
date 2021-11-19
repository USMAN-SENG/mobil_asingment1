import 'package:flutter/material.dart';  
  
void main() {  
  runApp(MaterialApp( home: MyApp(),));  
}  
  
class MyApp extends StatefulWidget {  
  @override  
  _State createState() => _State();  
}  
  
class _State extends State<MyApp> {  
  late int textInput; // will use to get the input 
  int monthIndex=0;
  var months = ['the month is','January', 'February ', 'March','April','May','June','July','August','September','October','November','December'];
  
  void _changeIndex() {
    setState(() {
      monthIndex = textInput;
    }
    );
  }
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
        appBar: AppBar(  
          title: Text('show what month it is'),  
        ),  
        body: Padding(  
            padding: EdgeInsets.all(15),  
            child: Column(  
              children: <Widget>[  
                Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'only numbers between 1 to 12',  
                      hintText: 'only numbers',  
                    ),  
                    onChanged: (inputValue){
                      textInput = int.parse(inputValue); //change sting to int
                    }
                  ),  
                ),  
                RaisedButton(  
                  child: Text('show month'),  
                  onPressed: _changeIndex,  
                ),
                Padding (
                  padding:EdgeInsets.all(15),
                  child: Text(months[monthIndex]),
                ),
              ],  
            )  
        )  
    );  
  }  
}

  
