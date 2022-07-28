import 'package:flutter/material.dart';
import 'package:session/theme/color.dart';
import 'package:session/theme/text_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData(
        appBarTheme: AppBarTheme( // appBarTheme를 통해 appbar의 색상을 정할 수 있습니다.
          color: Colors.deepOrange,
        ),
        primaryColor: Colors.blue,
        accentColor: Colors.purple,
        textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.teal, fontSize: 30),
        ),
      ),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Data'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Body Text1',style: Theme.of(context).textTheme.bodyText1,),
              SizedBox(height: 10),
              Text('heading4style',style: heading4style(color: black)),
              SizedBox(height: 10),
              Text('heading5style',style: heading5style(color: grey)),
              SizedBox(height: 10),
              Text('heading7style',style: heading7style(color: grey[900])),
              SizedBox(height: 10),
              Text('body2style',style: body2style(color: grey[800])),
              SizedBox(height: 10),
              Text('button2style',style: button2style(color: grey[700])),
              SizedBox(height: 10),
              Text('subtitle1style',style: subtitle1style(color: grey[600])),
              SizedBox(height: 10),
              Text('subtitle2style',style: subtitle2style(color: unable)),
              SizedBox(height: 10),
               Text('subtitle3style',style: subtitle3style(color: error)),
               SizedBox(height: 10),
            ]),
      ),
      floatingActionButton: FloatingActionButton( // accentColor가 자동으로 적용된다.
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

