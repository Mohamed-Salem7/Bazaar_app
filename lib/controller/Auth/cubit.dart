import 'package:bazaar/controller/Auth/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(InitAuthState());

  static AuthCubit get(context) => BlocProvider.of(context);

  bool changeSelectUserSallers = false;


  bool changeSelectUserCustomers = false;

  void changeSelectUserSaller() {
    changeSelectUserSallers = !changeSelectUserSallers;
    emit(ChangeSelectUserSallerState());
  }

  void changeSelectUserCustomer() {
    changeSelectUserCustomers = !changeSelectUserCustomers;
    emit(ChangeSelectUserCustomerState());
  }

  int pageNumber = 0;

  void changePageNumber(index){
    pageNumber=index;
    emit(ChangePageNumber());
  }




}
