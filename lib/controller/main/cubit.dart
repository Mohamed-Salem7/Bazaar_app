import 'package:bazaar/controller/main/state.dart';
import 'package:bazaar/presntaion/layers/checkout/checkout_screen.dart';
import 'package:bazaar/presntaion/layers/favorite/favorite_screen.dart';
import 'package:bazaar/presntaion/layers/home_screen/main_home_screen.dart';
import 'package:bazaar/presntaion/layers/notification/notification_screen.dart';
import 'package:bazaar/presntaion/layers/store/store_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(InitMainState());

  static MainCubit get(context) => BlocProvider.of(context);

  List<Widget> screen = [
    const MainHomeScreen(),
    const CheckOutScreen(),
    const StoreScreen(),
    const FavoriteScreen(),
  ];

  List<Widget> screenSeller = [
    const MainHomeScreen(),
    const NotificationScreen(),
  ];

  int currentIndex = 0;

  void changeScreenSelect(value) {
    currentIndex = value;
    emit(ChangeSelectScreenState());
  }



  int index = 0;

  void changeIndex(value)
  {
    if(value == 0) {
      index = 0;
    }
    if(value == 1)
    {
      index = 1;
    }
    emit(ChangeSelectScreenFavoriteState());
  }


  int indexStore = 0;

  void changeIndexStoreScreen(value)
  {
    if(value == 0) {
      indexStore = 0;
    }
    if(value == 1)
    {
      indexStore = 1;
    }
    if(value == 2)
    {
      indexStore = 2;
    }
    emit(ChangeSelectScreenStoreState());
  }



}
