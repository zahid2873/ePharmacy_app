import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ErrorScreen extends ConsumerWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final authSate = ref.watch(authProvider);
    return const Scaffold(
      body: Center(child: Text("Error")),
    );
  }
}
