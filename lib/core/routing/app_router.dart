import 'package:flutter/material.dart';
import 'package:testwidget/core/routing/routes.dart';
import 'package:testwidget/interaction_widget/animation_container.dart';
import 'package:testwidget/interaction_widget/dismissible.dart';

import 'package:testwidget/interaction_widget/drag_and_drop.dart';

import 'package:testwidget/interaction_widget/reorderable_list_view.dart';


class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.dragAndDrop:
        return MaterialPageRoute(builder: (_) => DragAndDrop());
      
      case Routes.dismissiblee:
        return MaterialPageRoute(builder: (_) => Dismissiblee());
      
      case Routes.reorderableListView:
        return MaterialPageRoute(builder: (_) => MyReorderableListView());
      
      case Routes.animationContainer:
        return MaterialPageRoute(builder: (_) => AnimationContainer());
      
    
  

      default:
        return null;
    }
  }
}
