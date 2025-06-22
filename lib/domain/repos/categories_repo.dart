import 'package:ecommerce_app/domain/model/category.dart';

abstract class CategoriesRepo {
  Future<List<Category>?> getCategories();
}
