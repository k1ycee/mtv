import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:mtv/models/book_model.dart';
import 'services/book_service.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() => runApp(Hmm());


class Hmm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: Scaffold(body: SafeArea(child: 
              ListView(children: <Widget>[
                Text('Shmug')
              ],),),)
    );
}

}