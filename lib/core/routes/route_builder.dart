import 'package:flutter/material.dart';

class RouteBuilder extends PageRouteBuilder{

  RouteBuilder(Widget screen)
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => screen,
        );

  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);

  @override
  Duration get reverseTransitionDuration => const Duration(milliseconds: 500);

  @override
  RouteTransitionsBuilder get transitionsBuilder => (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return animation.isCompleted?child:AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        return Stack(
          children: [
            if(animation.value>= 0.5) child!,
            if(!animation.isCompleted) Align(
              alignment: animation.value >= 0.5?
              Alignment.topCenter: Alignment.bottomCenter,
              child: Container(
                height: TweenSequence<double>(
                    [
                      TweenSequenceItem(
                          tween: Tween<double>(
                              begin: 0,
                              end : MediaQuery.sizeOf(context).height
                          ),
                          weight: 5
                      ),
                      TweenSequenceItem(
                          tween: Tween<double>(
                              begin: MediaQuery.sizeOf(context).height,
                              end : 0
                          ),
                          weight: 5
                      )
                    ]
                )
                    .animate(
                    CurvedAnimation(
                        parent: animation,
                        curve: Curves.easeInOut
                    ))
                    .value,
                width: double.infinity,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: const Radius.circular(60),
                      bottomRight: const Radius.circular(60),
                      topLeft: animation.value < 0.5?const Radius.circular(60):Radius.zero,
                      topRight: animation.value < 0.5?const Radius.circular(60):Radius.zero,
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Colors.brown.withOpacity(0.8),
                        Colors.brown.withOpacity(0.7)
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )
                ),
              ),
            ),

          ],
        );
      },
      child: child,
    );
  };

}