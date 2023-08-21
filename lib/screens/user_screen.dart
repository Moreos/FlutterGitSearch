import 'package:flutter/material.dart';
import 'package:flutter_git_search/logic/models/user_model.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.login!),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: getParams()),
        ),
      ),
    );
  }

  List<Widget> getParams() {
    List<Widget> widgets = [];
    user.toMap().forEach((key, value) => widgets.add(
          Container(
            decoration: BoxDecoration(
              border: Border.symmetric(horizontal: BorderSide(color: Colors.black)),
            ),
            padding: EdgeInsets.all(4),
            child: Row(
              children: [
                Expanded(
                  flex: 12,
                  child: Text(
                    '$key',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text('-', style: TextStyle(fontWeight: FontWeight.bold),),
                Expanded(
                    flex: 18,
                    child: Text(
                      '$value',
                      textAlign: TextAlign.end,
                    )),
              ],
            ),
          ),
        ));
    return widgets;
  }
}
