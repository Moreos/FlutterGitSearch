import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_git_search/logic/blocs/search_bloc/bloc/search_bloc.dart';
import 'package:flutter_git_search/logic/models/user_model.dart';
import 'package:flutter_git_search/screens/user_screen.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SearchBloc(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();
    SearchBloc searchBloc = BlocProvider.of<SearchBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Find user on GitHub'),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: TextField(
                      autofocus: true,
                      controller: textController,
                    ),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      searchBloc.add(GetUser(textController.text));
                    },
                    child: const Text('Search'),
                  ),
                ),
              ],
            ),
            BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
              if (state.userList.isNotEmpty) {
                return Expanded(
                  child: SingleChildScrollView(child: Column(
                    children: [
                      for (User user in state.userList) UserCard(user: user)
                    ],
                  ),),
                );
              } else {
                return const Expanded(
                  child: Center(
                    child: Text('User not found'),
                  ),
                );
              }
            })
          ],
        ),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          InkWell(onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserScreen(user: user)));
          }, child:
          Row(children: [
            CircleAvatar(child: Image.network(user.avatar_url!)),
            Text(user.login!),
          ],),),
          Row(children: [
            Text('Url: '),
            Expanded(child:
            InkWell(
              onTap: () async => await Clipboard.setData(ClipboardData(text: user.url!)),
              child: Text(user.url!, maxLines: 1,),
            ),),
          ],)
        ],
      ),
    );
  }
}

