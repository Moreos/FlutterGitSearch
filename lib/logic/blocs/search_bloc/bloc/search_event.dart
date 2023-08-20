part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

class GetUser extends SearchEvent {
  final String nickname;
  const GetUser(this.nickname);
}
