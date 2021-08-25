import 'package:deli_meals/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '.category-meals';
  // final String categoryID;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryID, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];

    final categoryMeal = DUMMY_MEALS.where((element) {
      return element.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle as String),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, item) {
          return MealItem(
              id: categoryMeal[item].id,
              title: categoryMeal[item].title,
              imageUrl: categoryMeal[item].imageUrl,
              duration: categoryMeal[item].duration,
              complexity: categoryMeal[item].complexity,
              affordability: categoryMeal[item].affordability);
        },
        itemCount: categoryMeal.length,
      ),
    );
  }
}
