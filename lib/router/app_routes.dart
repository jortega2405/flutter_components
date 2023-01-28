



import 'package:flutter/material.dart';
import 'package:flutter_components/screens/list_view_builder_screen.dart';

import '../models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initalRoute = 'home';  

  static final menuOptions = <MenuOptionModel>[
    
    MenuOptionModel(route: 'listViewOne', icon: Icons.list, name: 'List View One', screen: const ListViewOneScreen()),
    MenuOptionModel(route: 'listViewTwo', icon: Icons.line_style_outlined, name: 'List View Two', screen: const ListViewTwoScreen()),
    MenuOptionModel(route: 'alert', icon: Icons.add_alert_outlined, name: 'Alert', screen: const AlertScreen()),
    MenuOptionModel(route: 'card', icon: Icons.credit_card, name: 'Cards', screen: const CardScreen()),
    MenuOptionModel(route: 'avatar', icon: Icons.supervised_user_circle_outlined, name: 'Circle Avatar', screen: const AvatarScreen()),
    MenuOptionModel(route: 'animated', icon: Icons.play_arrow_rounded, name: 'Animated', screen: const AnimatedScreen()),
    MenuOptionModel(route: 'inputs', icon: Icons.add, name: 'Inputs and forms', screen: const InputScreen()),
    MenuOptionModel(route: 'sliders', icon: Icons.slow_motion_video_rounded, name: 'Sliders & Checks', screen: const SliderScreen()),
    MenuOptionModel(route: 'listViewBuilder', icon: Icons.build_circle_outlined, name: 'Infinite Scroll & Pull To Refresh', screen: const ListViewBuilderScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home':(BuildContext context) => const HomeScreen()});
    for (final options in menuOptions) {
      appRoutes.addAll({ options.route:(context) => options.screen});
    }

    return appRoutes;
  }
  static Route<dynamic> onGeneratedRoute(RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen()
        );
      }
}