import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SubiApp());
}

class SubiApp extends StatefulWidget {
  @override
  _SubiAppState createState() => _SubiAppState();
}

class _SubiAppState extends State<SubiApp> {
  int no = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink,
          title: Text(
            'Subrinta Pics',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
          ),
        ),
        body: Center(
          child: Image.asset('Subi/subi$no.jpg'),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: RaisedButton(
                  elevation: 8.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_left),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Previous'),
                      ),
                    ],
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    setState(() {
                      no = no - 1;
                      if (no == 0) no = 31;
                    });
                  },
                ),
              ),
              SizedBox(
                width: 10.0,
                //  height: double.infinity,
              ),
              Expanded(
                child: RaisedButton(
                  elevation: 8.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Next'),
                      ),
                      Icon(Icons.arrow_right),
                    ],
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    setState(() {
                      no = no % 31 + 1;
                    });
                  },
                ),
              ),
            ],
          ),
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}
