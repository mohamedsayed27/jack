
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../screens/vendor_main_layout_screens/vendor_home_screen.dart';
import '../../screens/vendor_main_layout_screens/vendor_more_screen.dart';
import '../../screens/vendor_main_layout_screens/vendor_offers_screen.dart';
import '../../screens/vendor_main_layout_screens/vendor_profile_screen.dart';
import '../../screens/vendor_main_layout_screens/vendor_reservations_screen.dart';
import 'vendor_main_layout_state.dart';

class VendorMainLayoutCubit extends Cubit<VendorMainLayoutState> {
  VendorMainLayoutCubit() : super(MainLayoutInitial());
  static VendorMainLayoutCubit get(context) => BlocProvider.of(context);
  List<Widget> screens = [
    const VendorMoreScreen(),
    const VendorReservationsScreen(),
    const VendorHomeScreen(),
    const VendorOffersScreen(),
    const VendorProfileScreen(),
  ];
  int currentIndex = 2;
  void oonChangeIndex(int index){
    currentIndex = index;
    emit(IndexChangedSucces());
  }
}
