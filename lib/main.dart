import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mtv/everything/bloc/bloc.dart';
import 'package:mtv/everything/models/book_model.dart';
import 'package:mtv/everything/repository.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mtv/everything/services/book_service.dart';
import 'package:webview_flutter/webview_flutter.dart';


TechRepo _repo = TechRepo();
void main(){
   runApp(MyApp(repo: _repo,));
  }

class MyApp extends StatelessWidget {
 
  final TechRepo repo;
  MyApp({this.repo});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text('TechCrunch', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w300)),centerTitle: true, elevation: 0,backgroundColor: Colors.black,
          ),
          body: BlocProvider(
            create: (context) => HnewsBloc(techRepo: repo)..add(Fetch()),
            child: Hmm(),
          ),
        )
    );
  }
}


class Hmm extends StatefulWidget {
  @override
  _HmmState createState() => _HmmState();
}

class _HmmState extends State<Hmm> { 


 // HnewsBloc bloc;

  @override
    void initState() { 
       NewsFlash b = NewsFlash();
        b.getNews();
     // bloc = BlocProvider.of<HnewsBloc>(context);
      super.initState();
      }

 @override
  Widget build(BuildContext context) {
    return BlocBuilder<HnewsBloc,HnewsState>(
      builder: (context,state){
        if (state is InitialHnewsState){
          return Center(
            child: SpinKitCubeGrid(color: Colors.white, size: 80,),
          );
        }
        if(state is Fetching){
          return Center(
            child: SpinKitCubeGrid(color: Colors.white, size: 80,),
          );
        }
        if (state is NewsError){
          return Center(child: Text('Connection Timed Out'),);
        }
        if (state is NewsLoaded){
          return ListView.builder(
            itemCount: state.news.length,
            itemBuilder: (BuildContext context,int index){
              return Tech(hNews: state.news[index],);
            },
          );
        }
        return null;
      },      
    );
  }
}

class Tech extends StatelessWidget {
  final HNews hNews;
  Tech({this.hNews});
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
          title : Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
        title: Text(hNews.title,style: TextStyle(fontSize: 28, fontWeight: FontWeight.w300,color: Colors.white),),
        subtitle: Text(hNews.by,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100,color: Colors.white)),
      ),
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
                     appBar: AppBar(title: Text(hNews.title,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),),centerTitle: true,backgroundColor: Colors.black,elevation:0,),
                     body: WebView(
                       initialUrl: hNews.url,
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
    );
  }
}