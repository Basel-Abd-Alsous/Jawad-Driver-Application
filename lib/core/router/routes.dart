import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/auth/domain/model/requiest_models/register_requiest_model.dart';
import '../../presentation/auth/pages/pages/car_info_screen.dart';
import '../../presentation/auth/pages/pages/change_password_screen.dart';
import '../../presentation/auth/pages/pages/forget_password_screen.dart';
import '../../presentation/auth/pages/pages/register_screen.dart';
import '../../presentation/auth/pages/pages/verify_screen.dart';
import '../../presentation/chat/pages/chat_screen.dart';
import '../../presentation/drawer/pages/bank_info_scereen.dart';
import '../../presentation/drawer/pages/contact_us_screen.dart';
import '../../presentation/drawer/pages/content_screen.dart';
import '../../presentation/drawer/pages/feedback_screen.dart';
import '../../presentation/home/pages/home_screen.dart';
import '../../presentation/introduction/presentation/pages/onboarding.screen.dart';
import '../../presentation/introduction/presentation/pages/onboarding_languages.dart';
import '../../presentation/layout/pages/layout_screen.dart';
import '../../presentation/myvisit/pages/visit_details_screen.dart';
import '../../presentation/myvisit/pages/vist_unpaid_screen.dart';
import '../../presentation/notifications/pages/notification_screen.dart';
import '../../presentation/profile/pages/profile_screen.dart';
import '../../presentation/splash/pages/splash.dart';
import '../../presentation/auth/pages/pages/login_screen.dart';
import '../context/global.dart';
import '../services/analytics_service.dart';
import '../widget/web_view_screen.dart';
import 'router_key.dart';

final GoRouter goRouter = GoRouter(
  navigatorKey: GlobalContext.navigatorKey,
  debugLogDiagnostics: true,
  routes: [
    /// Splash
    _pageRoute(path: AppRoutes.root, pageName: 'Splash Page', screen: const Splash()),

    /// Onboarding
    _pageRoute(path: AppRoutes.onboarding, pageName: 'Onboarding Page', screen: const Onboarding()),

    _pageRoute(path: AppRoutes.language, pageName: 'Language Page', screen: const OnboardingLanguages()),

    /// Auth
    _pageRoute(path: AppRoutes.login, pageName: 'Login Page', screen: const LoginScreen()),

    _pageRoute(path: AppRoutes.register, pageName: 'Register Page', screen: const RegisterScreen()),
    _pageRoute(path: AppRoutes.bankInfo2, pageName: 'Bank Info Page', screen: EditBankInfoScereen()),

    // _pageRoute(path: AppRoutes.uploadDocument, pageName: 'Document Page', screen: const DocumentScreen()),
    _pageRoute(path: AppRoutes.carInfo, pageName: 'Car Info Page', screen: const CarInfoScreen()),

    // _pageRoute(path: AppRoutes.bankInfo, pageName: 'Bank Info Page', screen: const BankInfoScreen()),
    _pageRoute(path: AppRoutes.forget, pageName: 'Forget Password Page', screen: ForgetPasswordScreen()),

    /// Notifications
    _pageRoute(path: AppRoutes.notification, pageName: 'Notification Page', screen: const NotificationScreen()),

    /// Profile
    _pageRoute(path: AppRoutes.profile, pageName: 'Profile Page', screen: ProfileScreen()),

    /// Drawer
    _pageRoute(path: AppRoutes.complaint, pageName: 'Feedback Page', screen: FeedbackScreen()),

    _pageRoute(path: AppRoutes.contactUs, pageName: 'Contact Us Page', screen: const ContactUsScreen()),

    /// Visits
    _pageRoute(path: AppRoutes.unPaidVisit, pageName: 'Unpaid Visits Page', screen: const VistUnpaidScreen()),

    /// Content
    GoRoute(
      path: AppRoutes.content,
      pageBuilder: (context, state) {
        final isTerms = bool.tryParse(state.uri.queryParameters['isTerms'] ?? 'false') ?? false;

        return fadeTransitionPage('Content Page', ContentScreen(isTerms: isTerms), state);
      },
    ),

    /// WebView
    GoRoute(
      path: AppRoutes.webView,
      pageBuilder: (context, state) {
        final title = state.uri.queryParameters['title'];
        final url = state.uri.queryParameters['url'] ?? '';

        return fadeTransitionPage('WebView Page', WebViewScreen(title: title, url: url), state);
      },
    ),

    /// Chat
    GoRoute(
      path: AppRoutes.chat,
      pageBuilder: (context, state) {
        final id = int.tryParse(state.uri.queryParameters['id'] ?? '') ?? 0;

        return fadeTransitionPage('Chat Page', ChatScreen(id: id), state);
      },
    ),

    /// Visit Details
    GoRoute(
      path: AppRoutes.visitDetails,
      pageBuilder: (context, state) {
        final id = state.uri.queryParameters['id'] ?? '';

        return fadeTransitionPage('Visit Details Page', VisitDetailsScreen(visitId: id), state);
      },
    ),

    /// Verify
    GoRoute(
      path: AppRoutes.verify,
      pageBuilder: (context, state) {
        final phoneNumber = state.uri.queryParameters['phoneNumber'] ?? '';

        final isRegister = state.uri.queryParameters['isRegister'] == 'true';

        final isLogin = state.uri.queryParameters['isLogin'] == 'true';

        final registerModel = state.extra as RegisterModel?;

        return fadeTransitionPage('Verify Page', VerifyScreen(phoneNumber: phoneNumber, model: registerModel, isLogin: isLogin, isRegister: isRegister), state);
      },
    ),

    /// Change Password
    GoRoute(
      path: AppRoutes.changePassword,
      pageBuilder: (context, state) {
        final phoneNumber = state.uri.queryParameters['phoneNumber'] ?? '';

        return fadeTransitionPage('Change Password Page', ChangePasswordScreen(phoneNumber: phoneNumber), state);
      },
    ),

    /// Layout
    GoRoute(path: AppRoutes.layout, pageBuilder: (context, state) => fadeTransitionPage('Layout Page', const LayoutScreen(), state)),

    /// Home
    GoRoute(path: AppRoutes.home, pageBuilder: (context, state) => fadeTransitionPage('Home Page', const HomeScreen(), state)),
  ],
);

/// Reusable Page Route
RouteBase _pageRoute({required String path, required String pageName, required Widget screen, List<RouteBase>? routes}) {
  return GoRoute(path: path, pageBuilder: (context, state) => fadeTransitionPage(pageName, screen, state), routes: routes ?? []);
}

/// Fade Transition + Analytics
Page<dynamic> fadeTransitionPage(String pageName, Widget child, GoRouterState state) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      AnalyticsService.instance.setCurrentScreen(pageName);
      return FadeTransition(opacity: animation, child: child);
    },
  );
}
