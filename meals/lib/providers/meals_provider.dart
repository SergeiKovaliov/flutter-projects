import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/data/test_data.dart';
import '../models/meal.dart';

final mealsProvider = Provider((ref) {
  return dummyMeals;
});