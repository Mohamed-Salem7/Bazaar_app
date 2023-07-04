import 'package:bazaar/controller/Auth/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(InitAuthState());

  static AuthCubit get(context) => BlocProvider.of(context);




  bool changeSelectUser = false;

  void changeSelectUsers() {
    changeSelectUser = !changeSelectUser;
    emit(ChangeSelectUserSallerState());
  }





}
