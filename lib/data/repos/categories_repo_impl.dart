import 'package:ecommerce_app/data/dataSource/categories_online_data_source.dart';
import 'package:ecommerce_app/domain/model/category.dart';
import 'package:ecommerce_app/domain/repos/categories_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoriesRepo)
class CategoriesRepoImpl implements CategoriesRepo {
  CategoriesOnlineDataSource _categoriesOnlineDataSource;

  CategoriesRepoImpl(this._categoriesOnlineDataSource);

  @override
  Future<List<Category>?> getCategories() {
    return _categoriesOnlineDataSource.getCategories();
  }
}
