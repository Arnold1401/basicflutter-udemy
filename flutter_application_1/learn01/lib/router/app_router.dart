import 'package:auto_route/auto_route.dart';

// -- untuk membuat app_router.gr.dart
// 1 @RouterPage() disematkan diatas class setiap screen page
// 2 jalankan perintah dibawah ini

//dart run build_runner build --delete-conflicting-outputs
// 3 masih ada codingan cacing merah jalankan perintah diatas

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        //  Dashboard Route dari app_dart.gr.dart
        AutoRoute(page: DashboardRoute.page),
        AutoRoute(page: Home.page, initial: true)
      ];
}
