import 'package:ecommerce_app/api/web_services.dart';
import 'package:ecommerce_app/data/dataSource/categories_online_data_source.dart';
import 'package:ecommerce_app/domain/model/category.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoriesOnlineDataSource)
class CategoriesOnlineDataSourceImpl implements CategoriesOnlineDataSource {
  WebServices _webServices;
  CategoriesOnlineDataSourceImpl(this._webServices);
  @override
  Future<List<Category>?> getCategories() async {
    var response = await _webServices.getCategories();
    return response.data?.map((cat_dto) => cat_dto.toCategory()).toList();
  }
}
