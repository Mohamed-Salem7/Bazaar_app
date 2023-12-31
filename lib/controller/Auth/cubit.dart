import 'package:bazaar/controller/Auth/state.dart';
import 'package:bazaar/presntaion/utils/App_Color.dart';
import 'package:bazaar/presntaion/utils/Global%20widget/constant.dart';
import 'package:bazaar/presntaion/utils/network/local/cashe_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(InitAuthState());

  static AuthCubit get(context) => BlocProvider.of(context);




  bool changeSelectUserSeller = false;
  bool changeSelectUserCustomer = false;

  void changeSelectUserSellers() {
    changeSelectUserSeller = !changeSelectUserSeller;
    emit(ChangeSelectUserSallerState());
  }


  void changeSelectUserCustomers() {
    changeSelectUserCustomer = !changeSelectUserCustomer;
    emit(ChangeSelectUserCustomerState());
  }


  bool changePassword = true;

  void changeVisibilityPassword() {
    changePassword = !changePassword;
    emit(ChangeVisibilityPasswordState());
  }



  bool checkBox = false;

  void changeCheckBox(value) {
    checkBox = value;
    emit(ChangeCheckBoxState());
  }



  late PageController pageController;

  void changePageController(){
    pageController = PageController();
    emit(ChangePageNumber());
  }







  int pageNumber = 0;
  void changePageNumber(index){
    pageNumber=index;
    emit(ChangePageNumber());
  }


  Color colors= AppColor.black;
  void changeColor(){
    colors=AppColor.white;
    emit(ChangeColor());
  }


  int tabShapeValue=0;
  void changeTabShapeValue(int value){
    tabShapeValue=value;
    emit(ChangeTabShapeValue());
  }



}
