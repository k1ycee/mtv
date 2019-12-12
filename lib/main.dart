import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'services/book_service.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider<NewsStates>(
          create: (_) => NewsStates(),
          child: Consumer<NewsStates>(builder: (context, provider, child) =>  Hmm()),
        ));
  }
}


class Hmm extends StatefulWidget {
  @override
  _HmmState createState() => _HmmState();
}

class _HmmState extends State<Hmm> { 

  @override
    void initState() { 
      NewsStates b = NewsStates();
        b.fetchData();
        b.parsedJson();
      super.initState();
      }

 @override
  Widget build(BuildContext context) {
  // var state = Provider.of<NewsStates>(context);
    return MaterialApp(
          home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
        ),
        body: ListView(
          children: <Widget>[
        // Container(child: state.isFetching ? SpinKitChasingDots(color: Colors.blue, size: 90,) : state.parsedJson() != null ? Text(state.parsedJson()): Text('well')) 
          ],
        ),
      ),
    );
  }
}