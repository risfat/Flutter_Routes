import 'package:flutter/material.dart';

import 'routes/app_routes.dart';
import 'routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App',
      onGenerateRoute: Routes.onGenerateRoutes, // Set the route generator
      initialRoute: AppRoutes.home, // Set the initial route
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // Navigate to the "home" route
              Navigator.of(context).pushNamed(AppRoutes.hotel);
            },
            child: const Text('Go to Home'),
          ),
        ),
      ),
    );
  }
}
