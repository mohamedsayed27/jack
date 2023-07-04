
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../screens/user_main_layout_screens/user_home_screen.dart';
import '../../screens/user_main_layout_screens/user_more_screen.dart';
import '../../screens/user_main_layout_screens/user_offers_screen.dart';
import '../../screens/user_main_layout_screens/user_reservations_screen.dart';
import '../../screens/user_main_layout_screens/user_services_screen.dart';
import 'user_main_layout_state.dart';

class UserMainLayoutCubit extends Cubit<MainLayoutState> {
  UserMainLayoutCubit() : super(MainLayoutInitial());
  static UserMainLayoutCubit get(context) => BlocProvider.of(context);
  final List<Widget> screens = [
    const UserProfileScreen(),
    const UserReservationsScreen(),
    const UserHomeScreen(),
    const UserOffersScreen(),
    const UserServicesScreen(),
  ];
  int currentIndex = 2;
  void oonChangeIndex(int index){
    currentIndex = index;
    emit(IndexChangedSucces());
  }
}
