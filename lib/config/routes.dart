import 'package:dh_music/utils/bindings.dart';
import 'package:dh_music/views/file_path/path_music_list/path_music_list_view.dart';
import 'package:dh_music/views/main_view/main_screen.dart';
import 'package:dh_music/views/queue/queue_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String home = '/home';
  static const String queue = '/queue';
  static const String musicPathList = '/musicPathList';

  static final List<GetPage> getPages = [
    GetPage(
      name: home,
      page: () => const MainScreen(),
      transition: Transition.noTransition,
      binding: AppBindings(),
    ),
    GetPage(
      name: queue,
      page: () => const QueueScreen(),
      transition: Transition.downToUp,
    ),
    GetPage(
      name: musicPathList,
      page: () => MusicPathListView(),
      transition: Transition.noTransition,
    ),
  ];

  static void navigateTo({required String route}) {
    Get.toNamed(route);
  }

  static navigateWithArguments({
    required String route,
    required dynamic arguments,
  }) {
    Get.toNamed(route, arguments: arguments);
  }
}
