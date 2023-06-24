
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../screens/main_layout_screens/home_screen.dart';
import '../../screens/main_layout_screens/more_screen.dart';
import '../../screens/main_layout_screens/offers_screen.dart';
import '../../screens/main_layout_screens/reservations_screen.dart';
import '../../screens/main_layout_screens/services_screen.dart';
import 'main_layout_state.dart';

class MainLayoutCubit extends Cubit<MainLayoutState> {
  MainLayoutCubit() : super(MainLayoutInitial());
  static MainLayoutCubit get(context) => BlocProvider.of(context);
  final List<Widget> screens = [
    const ProfileScreen(),
    const ReservationsScreen(),
    const HomeScreen(),
    const OffersScreen(),
    const ServicesScreen(),
  ];
  int currentIndex = 2;
  void oonChangeIndex(int index){
    currentIndex = index;
    emit(IndexChangedSucces());
  }
}
