import 'package:flutter/material.dart';
import 'package:golmatch/responsive.dart';
import 'package:golmatch/shared/constants/defaults.dart';
import 'package:golmatch/shared/widgets/header.dart';
import 'package:golmatch/shared/widgets/logo.dart';
import 'dashboard/dashboard_page.dart';

final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

class EntryPoint extends StatelessWidget {
  const EntryPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 1360),
                        child: ListView(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: AppDefaults.padding *
                                    (Responsive.isMobile(context) ? 1 : 1.5),
                              ),
                              child: const SafeArea(child: DashboardPage()),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Header(drawerKey: _drawerKey),
          if (!Responsive.isMobile(context))
            const Logo(),
        ]
      ),
    );
  }
}
