
import 'package:flutter/material.dart';

import '../routes/app_routes.dart';

class PackageListingView extends StatelessWidget {
  const PackageListingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Welcome to the Package Listing Screen!', textAlign: TextAlign.center, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the Login Screen
                  Navigator.of(context).pushNamed(AppRoutes.login);
                },
                child: const Text('Go to Login'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the Hotel Screen
                  Navigator.of(context).pushNamed(AppRoutes.hotel);
                },
                child: const Text('Go to Hotel'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the Hotel Detail Screen
                  Navigator.of(context).pushNamed(AppRoutes.hotelDetail);
                },
                child: const Text('Go to Hotel Detail'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the Signup Screen
                  Navigator.of(context).pushNamed(AppRoutes.signup);
                },
                child: const Text('Go to Signup'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the Package Listing Screen
                  Navigator.of(context).pushNamed(AppRoutes.home);
                },
                child: const Text('Go to Home'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the Package Detail Screen
                  Navigator.of(context).pushNamed(AppRoutes.packageDetail);
                },
                child: const Text('Go to Package Detail'),
              ),
              // Add buttons for other screens as needed
            ],
          ),
        ),
      ),
    );
  }
}
