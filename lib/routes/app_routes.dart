import 'package:stroller/presentation/load_screen/load_screen.dart';
import 'package:stroller/presentation/load_screen/binding/load_binding.dart';
import 'package:stroller/presentation/login_auth_screen/login_auth_screen.dart';
import 'package:stroller/presentation/login_auth_screen/binding/login_auth_binding.dart';
import 'package:stroller/presentation/sign_up_page_one_screen/sign_up_page_one_screen.dart';
import 'package:stroller/presentation/sign_up_page_one_screen/binding/sign_up_page_one_binding.dart';
import 'package:stroller/presentation/welcome_page_screen/welcome_page_screen.dart';
import 'package:stroller/presentation/welcome_page_screen/binding/welcome_page_binding.dart';
import 'package:stroller/presentation/camera_window_screen/camera_window_screen.dart';
import 'package:stroller/presentation/camera_window_screen/binding/camera_window_binding.dart';
import 'package:stroller/presentation/load_screen_one_screen/load_screen_one_screen.dart';
import 'package:stroller/presentation/load_screen_one_screen/binding/load_screen_one_binding.dart';
import 'package:stroller/presentation/speech_to_text_screen/speech_to_text_screen.dart';
import 'package:stroller/presentation/speech_to_text_screen/binding/speech_to_text_binding.dart';
import 'package:stroller/presentation/sign_up_page_two_screen/sign_up_page_two_screen.dart';
import 'package:stroller/presentation/sign_up_page_two_screen/binding/sign_up_page_two_binding.dart';
import 'package:stroller/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:stroller/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String loadScreen = '/load_screen';

  static String loginAuthScreen = '/login_auth_screen';

  static String signUpPageOneScreen = '/sign_up_page_one_screen';

  static String welcomePageScreen = '/welcome_page_screen';

  static String cameraWindowScreen = '/camera_window_screen';

  static String loadScreenOneScreen = '/load_screen_one_screen';

  static String speechToTextScreen = '/speech_to_text_screen';

  static String signUpPageTwoScreen = '/sign_up_page_two_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: loadScreen,
      page: () => LoadScreen(),
      bindings: [
        LoadBinding(),
      ],
    ),
    GetPage(
      name: loginAuthScreen,
      page: () => LoginAuthScreen(),
      bindings: [
        LoginAuthBinding(),
      ],
    ),
    GetPage(
      name: signUpPageOneScreen,
      page: () => SignUpPageOneScreen(),
      bindings: [
        SignUpPageOneBinding(),
      ],
    ),
    GetPage(
      name: welcomePageScreen,
      page: () => WelcomePageScreen(),
      bindings: [
        WelcomePageBinding(),
      ],
    ),
    GetPage(
      name: cameraWindowScreen,
      page: () => CameraWindowScreen(),
      bindings: [
        CameraWindowBinding(),
      ],
    ),
    GetPage(
      name: loadScreenOneScreen,
      page: () => LoadScreenOneScreen(),
      bindings: [
        LoadScreenOneBinding(),
      ],
    ),
    GetPage(
      name: speechToTextScreen,
      page: () => SpeechToTextScreen(),
      bindings: [
        SpeechToTextBinding(),
      ],
    ),
    GetPage(
      name: signUpPageTwoScreen,
      page: () => SignUpPageTwoScreen(),
      bindings: [
        SignUpPageTwoBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoadScreen(),
      bindings: [
        LoadBinding(),
      ],
    )
  ];
}
