import 'package:flutter/material.dart';

import '../models/meal.dart';

// this page will contain List of meals which are present under the category selected
// category selected by the user
class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    required this.title, // title of the category selected
    required this.meals,
  });

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
        itemBuilder: (ctx, index) => Text(meals[index].title),
        itemCount: meals.length,
      );

      if(meals.isEmpty){
        content = Center(child: Column(mainAxisSize: MainAxisSize.min,children:  [
           Text("Nothing here...." ,
           style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Theme.of(context).colorScheme.onBackground,
           ),),
        ],),
        );
      }
      
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content
    );
  }
}
