import 'package:delivery/core/constants/available_routes.dart';
import 'package:delivery/core/reusable_widgets/reusable_widgets.dart';
import 'package:delivery/core/routes/route_builder.dart';
import 'package:delivery/features/home/presentation/screens/home_screen.dart';
import 'package:delivery/features/products/presentation/screens/product_screen.dart';
import 'package:flutter/cupertino.dart';

class RoutesGenerator{
  static late Widget _screen;
  static Route<dynamic> generate(RouteSettings settings){

    if(settings.name!.startsWith(AvailableRoutes.productScreen)){
      return _validateProductDeepLinking(settings);
    }

    switch(settings.name){
      case AvailableRoutes.homeScreen:
        _screen = const HomeScreen();

    }

    return RouteBuilder(_screen);
  }


  static Route<dynamic> _validateProductDeepLinking(RouteSettings settings){

      late final int? productId;
      settings.name!.split('?id=').length >= 2
          ? productId = int.tryParse(settings.name!.split('?id=')[1])
          : null;
      _screen = productId == null
          ? const NotFoundScreen()
          : ProductScreen(productId: productId);
      return RouteBuilder(_screen);


  }

}