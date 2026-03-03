import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class NetworkStateBanner extends StatelessWidget {
  final Widget child;

  const NetworkStateBanner({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ConnectivityResult>>(
      stream: Connectivity().onConnectivityChanged,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return child; // لا تعرض البانر قبل وصول البيانات
        }

        final results = snapshot.data!;

        bool isOffline = results.contains(ConnectivityResult.none);

        return Stack(
          children: [
            child,
            if (isOffline)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                color: Colors.red,
                child: const SafeArea(
                  child: Text(
                    'No internet connection',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
