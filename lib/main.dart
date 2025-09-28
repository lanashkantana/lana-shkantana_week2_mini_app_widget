import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testwidget/core/routing/app_router.dart';
import 'package:testwidget/mini_app_widget.dart';

Future<void> main() async {
      WidgetsFlutterBinding.ensureInitialized();

     await ScreenUtil.ensureScreenSize();
  runApp(MiniAppWidget(appRouter:  AppRouter()));
}
