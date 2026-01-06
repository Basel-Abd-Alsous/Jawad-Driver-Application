import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/auth/pages/pages/bank_info_screen.dart';
import '../../presentation/auth/pages/pages/car_info_screen.dart';
import '../../presentation/auth/pages/pages/change_password_screen.dart';
import '../../presentation/auth/pages/pages/document_screen.dart';
import '../../presentation/auth/pages/pages/forget_password_screen.dart';
import '../../presentation/auth/pages/pages/register_screen.dart';
import '../../presentation/auth/pages/pages/verify_screen.dart';
import '../../presentation/chat/pages/chat_screen.dart';
import '../../presentation/drawer/pages/complaints_screen.dart';
import '../../presentation/drawer/pages/contact_us_screen.dart';
import '../../presentation/drawer/pages/content_screen.dart';
import '../../presentation/introduction/presentation/pages/onboarding.screen.dart';
import '../../presentation/introduction/presentation/pages/onboarding_languages.dart';
import '../../presentation/layout/pages/layout_screen.dart';
import '../../presentation/home/pages/home_screen.dart';
import '../../presentation/auth/pages/pages/login_screen.dart';
import '../../presentation/myvisit/pages/visit_details_screen.dart';
import '../../presentation/notifications/pages/notification_screen.dart';
import '../../presentation/profile/pages/profile_screen.dart';
import '../../presentation/splash/pages/splash.dart';
import '../context/global.dart';
import '../widget/web_view_screen.dart';
import 'router_key.dart';

final goRouter = GoRouter(
  navigatorKey: GlobalContext.navigatorKey,
  debugLogDiagnostics: true,
  routes: [
    _pageRouter(path: AppRoutes.root, screen: const Splash()),
    _pageRouter(path: AppRoutes.onboarding, screen: const Onboarding()),
    _pageRouter(path: AppRoutes.language, screen: const OnboardingLanguages()),
    _pageRouter(path: AppRoutes.login, screen: const LoginScreen()),
    _pageRouter(path: AppRoutes.register, screen: const RegisterScreen()),
    _pageRouter(path: AppRoutes.uploadDocument, screen: const DocumentScreen()),
    _pageRouter(path: AppRoutes.carInfo, screen: const CarInfoScreen()),
    _pageRouter(path: AppRoutes.bankInfo, screen: const BankInfoScreen()),
    _pageRouter(path: AppRoutes.forget, screen: ForgetPasswordScreen()),
    _pageRouter(path: AppRoutes.notification, screen: NotificationScreen()),
    _pageRouter(path: AppRoutes.profile, screen: ProfileScreen()),
    _pageRouter(path: AppRoutes.complaint, screen: ComplaintsScreen()),
    _pageRouter(path: AppRoutes.contactUs, screen: ContactUsScreen()),

    GoRoute(
      path: AppRoutes.content,
      pageBuilder: (context, state) {
        return _fadeTransitionPage(ContentScreen(isTerms: bool.tryParse(state.uri.queryParameters['isTerms'] ?? 'false')), state);
      },
    ),
    GoRoute(
      path: AppRoutes.webView,
      pageBuilder: (context, state) {
        return _fadeTransitionPage(WebViewScreen(title: state.uri.queryParameters['title'], url: state.uri.queryParameters['url'] ?? ''), state);
      },
    ),
    GoRoute(
      path: AppRoutes.chat,
      pageBuilder: (context, state) {
        final id = state.uri.queryParameters['id'] ?? '';
        return _fadeTransitionPage(ChatScreen(id: int.tryParse(id) ?? 0), state);
      },
    ),
    GoRoute(
      path: AppRoutes.visitDetails,
      pageBuilder: (context, state) {
        final id = state.uri.queryParameters['id'] ?? '';
        return _fadeTransitionPage(VisitDetailsScreen(visitId: id), state);
      },
    ),
    GoRoute(
      path: AppRoutes.verify,
      pageBuilder: (context, state) {
        final phoneNumber = state.uri.queryParameters['phoneNumber'] ?? '';
        return _fadeTransitionPage(VerifyScreen(phoneNumber: phoneNumber), state);
      },
    ),
    GoRoute(
      path: AppRoutes.changePassword,
      pageBuilder: (context, state) {
        final phoneNumber = state.uri.queryParameters['phoneNumber'] ?? '';
        return _fadeTransitionPage(ChangePasswordScreen(phoneNumber: phoneNumber), state);
      },
    ),
    GoRoute(path: AppRoutes.layout, pageBuilder: (context, state) => _fadeTransitionPage(const LayoutScreen(), state)),
    GoRoute(path: AppRoutes.home, pageBuilder: (context, state) => _fadeTransitionPage(const HomeScreen(), state)),
  ],
);

RouteBase _pageRouter({required String path, required Widget screen, List<RouteBase>? routes}) {
  return GoRoute(path: path, pageBuilder: (context, state) => _fadeTransitionPage(screen, state), routes: routes ?? []);
}

Page _fadeTransitionPage(Widget child, GoRouterState state) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}
