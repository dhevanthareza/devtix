import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:devtix/models/models.dart';
import 'package:devtix/services/services.dart';
import 'package:equatable/equatable.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  @override
  UserState get initialState => UserInitial();

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    if (event is LoadUser) {
      User user = await UserService.getUser(event.id);
      yield UserLoaded(user);
    } else {
      yield UserInitial();
    }
  }
}
