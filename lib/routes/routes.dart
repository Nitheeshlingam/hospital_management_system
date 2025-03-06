import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hms_app/controllers/forgot_password_controller.dart';
import 'package:hms_app/controllers/login_controller.dart';
import 'package:hms_app/controllers/otp_verification_controller.dart';
import 'package:hms_app/controllers/reset_password_controller.dart';
import 'package:hms_app/pages/about_page.dart';
import 'package:hms_app/pages/appointment_page.dart';
import 'package:hms_app/pages/contact_page.dart';
import 'package:hms_app/pages/home_page.dart';
import 'package:hms_app/pages/not_found_page.dart';
import 'package:hms_app/routes/routenames.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: RouteNames.home,
  routes: [
    GoRoute(
      path: RouteNames.home,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: RouteNames.about,
      builder: (context, state) => const AboutPage(),
    ),
    GoRoute(
      path: RouteNames.contact,
      builder: (context, state) => const ContactPage(),
    ),
    GoRoute(
      path: RouteNames.appointment,
      builder: (context, state) => const AppointmentPage(),
    ),
    GoRoute(
      path: RouteNames.login,
      builder: (context, state) => LoginController(),
    ),
    GoRoute(
      path: RouteNames.forgotPassword,
      builder: (context, state) => const ForgotPasswordController(),
    ),
    GoRoute(
      path: RouteNames.otpVerification,
      builder: (context, state) {
        final input = state.extra as String? ?? '';
        return OTPVerificationController(input: input);
      },
    ),
    GoRoute(
      path: RouteNames.resetPassword,
      builder: (context, state) => const ResetPasswordController(),
    ),
  ],
  errorPageBuilder: (context, state) => MaterialPage(
    child: NotFoundPage(),
  ),
);
