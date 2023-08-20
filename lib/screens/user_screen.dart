import 'package:flutter/material.dart';
import 'package:flutter_git_search/logic/models/user_model.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: getParams()
          ),
        ),
      ),
    );
  }

  List<Widget> getParams() {
    List<Widget> widgets = [];
    user.toMap().forEach(
          (key, value) => widgets.add(Container(
        child: Row(
          children: [
          Text(key, style: TextStyle(fontWeight: FontWeight.bold),),
          Expanded(child: Text('$value', textAlign: TextAlign.end,)),
        ],),
      ),)
    );
    return widgets;
  }
}
