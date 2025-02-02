import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_architecture/core/route/route_name.dart';
import 'package:riverpod_architecture/features/login/presentation/ui/widget/login_screen.dart';
import 'package:riverpod_architecture/features/signup/presentation/ui/widget/signup_screen.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        name: loginRoute,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/signup',
        name: signUpRoute,
        builder: (context, state) => const SignupScreen(),
      )
    ],
  );
});
