import 'package:flutter/material.dart';
import 'package:mtv/everything/models/book_model.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() => runApp(Maybe());


class Maybe extends StatefulWidget {
  @override
  _MaybeState createState() => _MaybeState();
}

class _MaybeState extends State<Maybe> {
  Future<Habs> news;
 
  @override 
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(   
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('TechCrunch', style:TextStyle(color: Colors.white,fontWeight:FontWeight.w300,fontSize:29)),
          centerTitle: true,
        ),
        body: Container(
          child: FutureBuilder<Habs>(
            future: news,
            builder: (context, snapshot){
              if (snapshot.hasData){
                return ListView.builder(
                  itemCount: snapshot.data.news.length,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          ExpansionTile(
                              title: ListTile(
                              contentPadding: EdgeInsets.all(8),
                              title: Text(snapshot.data.news[index].title),
                              subtitle: Text(snapshot.data.news[index].by),
                            ),
                            children: <Widget>[
                                     Padding(
                                          padding: EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: <Widget>[
             IconButton(
               icon: Icon(Icons.launch,color: Colors.white,),
               onPressed: () async{
                 Navigator.push(context, MaterialPageRoute(
                   builder: (context) => Scaffold(
                     appBar: AppBar(title: Text(snapshot.data.news[index].title,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),),centerTitle: true,backgroundColor: Colors.black,elevation:0,),
                     body: WebView(
                       initialUrl: snapshot.data.news[index].url,
                       javascriptMode: JavascriptMode.unrestricted,
                     ),
                   )
                 ));
               },
            )
           ],
         ),
       )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
              }
              return Container();
            }
          ),
        ),
      ),
    );
  }
}