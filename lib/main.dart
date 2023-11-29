import 'package:flutter/material.dart';
import 'route.dart';
import 'services.dart';

void main() {
  runApp(const ServiceApp());
}

class ServiceApp extends StatelessWidget {
  const ServiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const AllService(),
        PagesRoute.allservicesRoute: (context) => const AllService(),
      },
    );
  }
}
