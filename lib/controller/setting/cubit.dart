import 'package:bazaar/controller/setting/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SettingCubit extends Cubit<SettingState> {
  SettingCubit() : super(InitSettingState());

  static SettingCubit get(context) => BlocProvider.of(context);


  bool isCheck = false;

  void changeStateCheck()
  {
    isCheck = !isCheck;
    emit(ChangeCheckAddressState());
  }


}