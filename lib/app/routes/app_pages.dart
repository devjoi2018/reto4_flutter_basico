import 'package:get/get.dart';
import '../ui/pages/home_page/home_page.dart';
part 'app_routes.dart';

// ignore: public_member_api_docs
class AppPages {
  // ignore: public_member_api_docs
  static final List<GetPage<Routes>> routes = <GetPage<Routes>>[
    GetPage<Routes>(name: Routes.INITIAL, page: () => HomePage()),
  ];
}
