import 'package:ecommerce_app/domain/use_case/get_categories_use_case.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeViewModel {
  GetCategoriesUseCase _categoriesUseCase;
  HomeViewModel(this._categoriesUseCase);

  Future<void> getCategories() async {
    var result = await _categoriesUseCase.invoke();
    print(result);
  }
}
