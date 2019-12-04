import 'package:flutter/material.dart';
import 'services/book_service.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() => runApp(Hmm());


class Hmm extends StatefulWidget {
  @override
  _HmmState createState() => _HmmState();
}

class _HmmState extends State<Hmm> {
  @override
  void initState() {
    getNews();
    // dNews(url);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}