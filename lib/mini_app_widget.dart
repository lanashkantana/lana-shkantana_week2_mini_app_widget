import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testwidget/core/routing/app_router.dart';
import 'package:testwidget/core/routing/routes.dart';

class MiniAppWidget extends StatelessWidget {
  final AppRouter appRouter;
  const MiniAppWidget({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        theme: ThemeData(
          // primaryColor: AppColors.mainBlue,
          // fontFamily: AppConstants.raleway,
          // scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.animationContainer,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
