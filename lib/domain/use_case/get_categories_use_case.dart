import 'package:ecommerce_app/domain/model/category.dart';
import 'package:ecommerce_app/domain/repos/categories_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategoriesUseCase {
  CategoriesRepo _categoriesRepo;

  GetCategoriesUseCase(this._categoriesRepo);
  Future<List<Category>?> invoke() {
    return _categoriesRepo.getCategories();
  }
}
