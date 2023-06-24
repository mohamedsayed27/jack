import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jack/features/user/presentation/controller/main_layout_cubit/main_layout_cubit.dart';

import 'core/app_router/app_router.dart';
import 'core/app_router/screens_name.dart';
import 'core/theme/app_colors.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (BuildContext context, Widget? child) {
        return MultiBlocProvider(
          providers: [BlocProvider(create: (context) => MainLayoutCubit())],
          child: MaterialApp(
            title: 'Jack',
            theme: ThemeData(
              primarySwatch:
                  AppColors.createMaterialColor(AppColors.primaryColor),
            ),
            localizationsDelegates: const [
              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale("ar", "AE"),
            ],
            onGenerateRoute: AppRouter.generateRoute,
            initialRoute: ScreenName.splashscreen,
            // home: MainLayoutScreen(),
          ),
        );
      },
    );
  }
}
