part of 'search_bloc.dart';

class SearchState extends Equatable {
  SearchState({this.userList = const []});

  final List<User> userList;

  @override
  List<dynamic> get props => [userList];

  SearchState copyWith({
    String? text,
    List<User>? userList,
  }) {
    return SearchState(
      userList: userList ?? this.userList,
    );
  }
}
