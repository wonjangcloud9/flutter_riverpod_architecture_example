import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Login Screen 2'),
            IconButton.filled(
              onPressed: () {
                context.go('/signup');
              },
              icon: Icon(Icons.login_outlined),
            )
          ],
        ),
      ),
    );
  }
}
