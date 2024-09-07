import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:golmatch/responsive.dart';

import '../../theme/app_colors.dart';
import '../constants/defaults.dart';
import '../constants/ghaps.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.drawerKey});

  final GlobalKey<ScaffoldState> drawerKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.bgSecondayLight,
      padding: const EdgeInsets.only(top: 20),
      child: Material(
        elevation: 3,
        child: SafeArea(
          bottom: false,
          child: Container(
            color: AppColors.primary,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (!Responsive.isMobile(context))
                        IconButton(
                          onPressed: () {},
                          icon: Badge(
                            isLabelVisible: true,
                            child:
                            SvgPicture.asset("assets/icons/message_light.svg"),
                          ),
                        ),
                      if (!Responsive.isMobile(context)) gapW16,
                      if (!Responsive.isMobile(context))
                        IconButton(
                          onPressed: () {},
                          icon: Badge(
                            isLabelVisible: true,
                            child: SvgPicture.asset(
                                "assets/icons/notification_light.svg"),
                          ),
                        ),
                      if (!Responsive.isMobile(context)) gapW16,
                      if (!Responsive.isMobile(context))
                        IconButton(
                          onPressed: () {},
                          icon: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://cdn.create.vista.com/api/media/small/339818716/stock-photo-doubtful-hispanic-man-looking-with-disbelief-expression"),
                          ),
                        ),
                      TextButton(
                        onPressed: () => context.go('/sign-in'),
                        style: TextButton.styleFrom(
                          foregroundColor:
                          Theme.of(context).textTheme.titleLarge!.color,
                          minimumSize: const Size(80, 56),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(AppDefaults.borderRadius),
                            ),
                          ),
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        child: const Text("Sign In"),
                      ),
                      gapW16,
                      ElevatedButton(
                        onPressed: () => context.go('/register'),
                        child: const Text("Sign Up"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
