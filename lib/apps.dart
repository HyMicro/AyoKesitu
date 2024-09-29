import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:ayo_kesitu/presentation/routes/routes.dart';
import 'package:ayo_kesitu/utils/utils.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom],
    );

    return ScreenUtilInit(
      ensureScreenSize: true,
      designSize: const Size(360, 800),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.INIT,
          unknownRoute: UtilsRoute.notFound,
          getPages: [
            ...initRoute,
            ...rootRoute,
            ...authRoute,
          ],
          theme: AppThemes.light,
          darkTheme: AppThemes.dark,
          themeMode: ThemeMode.light,
          translationsKeys: AppLanguage.translations,
          locale: const Locale('id', 'ID'),
        );
      },
    );
  }
}
