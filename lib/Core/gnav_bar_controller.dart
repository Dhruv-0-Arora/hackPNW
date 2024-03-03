import 'package:get/get.dart';
import 'package:hack_pnw/UI/discover_page.dart';
import 'package:hack_pnw/UI/home_page.dart';
import 'package:hack_pnw/UI/settings_page.dart';
import 'package:hack_pnw/UI/upload_page.dart';

class BottomNavigationBarController extends GetxController {
  RxInt index = 0.obs;
  var pages = [
    HomePage(),
    UploadPage(),
    DiscoverPage(),
    SettingsPage(),
  ];
}
