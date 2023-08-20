import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_git_search/logic/models/user_model.dart';
import 'package:flutter_git_search/services/api_provider.dart';

part 'search_event.dart';

part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState()) {
    on<GetUser>((event, emit) async {
      ApiProvider apiProvider = ApiProvider();
      List<User> userList = await apiProvider.getUser(event.nickname);
      emit(
        state.copyWith(text: event.nickname, userList: userList),
      );
    });
  }
}
