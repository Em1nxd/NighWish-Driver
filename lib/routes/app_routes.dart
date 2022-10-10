import 'package:flutter/material.dart';
import 'package:nightwishdriver/home_screen.dart';
import 'package:nightwishdriver/routes/route_names.dart';
import 'package:nightwishdriver/screens/home/second_page.dart';
import 'package:nightwishdriver/screens/login/auth.dart';
import 'package:nightwishdriver/screens/login/login.dart';
import 'package:nightwishdriver/screens/login/personal_data.dart';
import 'package:nightwishdriver/screens/map/map_page.dart';
import 'package:nightwishdriver/screens/map/message/message_page.dart';
import 'package:nightwishdriver/screens/map/show_map.dart';
import 'package:nightwishdriver/screens/navbar/about.dart';
import 'package:nightwishdriver/screens/navbar/history.dart';
import 'package:nightwishdriver/screens/navbar/history_info.dart';
import 'package:nightwishdriver/screens/navbar/language.dart';
import 'package:nightwishdriver/screens/product_order/history_product.dart';
import 'package:nightwishdriver/screens/product_order/product.dart';
import 'package:nightwishdriver/screens/product_order/second_product.dart';
import 'package:nightwishdriver/widgets/product_order_widget/order_list_widget.dart';

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.HOME:
        return _route(const HomeScreen());
      case RouteNames.LOGIN:
        return _route(const LoginPage());
      case RouteNames.AUTH:
        return _route(const AuthPage());
      case RouteNames.PRODUCT:
        return _route(const ProductOrderOne());
      case RouteNames.PERSONALDATA:
        return _route(const PersonalData());
      case RouteNames.HISTORY:
        return _route(const HistoryPage());
      case RouteNames.ABOUTUS:
        return _route(const AboutUsPage());
      case RouteNames.LANGUAGE:
        return _route(const LanguagePage());
      case RouteNames.HISTORYINFO:
        return _route(const HistoryInfo());
      case RouteNames.MAPPAGE:
        return _route(const MapPage());
      case RouteNames.MESSAGEPAGE:
        return _route(const MessagePage());
      case RouteNames.SECONDPAGE:
        return _route(SecondPage());
      case RouteNames.SECONDORDER:
        return _route(const SecondProductOrderOne());
      case RouteNames.HISTORYORDER:
        return _route(const HistoryOrder());
      case RouteNames.SHOWMAP:
        return _route(const ShowMapPage());
    }
  }

  static MaterialPageRoute _route(Widget page) {
    return MaterialPageRoute(builder: (_) {
      return page;
    });
  }
}
