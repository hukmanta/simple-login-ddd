
import 'package:auto_route/annotations.dart';
import 'package:simple_login_ddd/presentation/sign_in/sign_in_page.dart';
import 'package:simple_login_ddd/presentation/splash/splash_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: SplashPage, initial: true),
  MaterialRoute(page: SignInPage)
],)
class $AppRoute{
}