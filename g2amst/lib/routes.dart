import 'package:flutter/material.dart';
import 'package:g2amst/cart_view.dart';
import 'package:g2amst/home_view.dart';
import 'package:g2amst/login_view.dart';
import 'package:g2amst/product.dart';
import 'package:g2amst/product_view.dart';
import 'package:g2amst/register_view.dart';
import 'package:g2amst/splash.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashView());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginView());
      case '/register':
        return MaterialPageRoute(builder: (_) => Registerview());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeView());
      case '/product-view':
        Product _product = args as Product;
        return MaterialPageRoute(builder: (_) => ProductView(_product));
      case '/cart-view':
        return MaterialPageRoute(builder: (_) => CartView());
      default:
        return _errorRoute();
    }
  }
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Error"),
          centerTitle: true,
        ),
        body: const Center(
          child: Text("ERROR"),
        ),
      );
    });
  }
}