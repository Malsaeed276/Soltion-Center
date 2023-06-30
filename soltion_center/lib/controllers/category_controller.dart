import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:soltion_center/models/category_model.dart';

import '../services/category_service.dart';

class CategoryController with ChangeNotifier {
  final themeBox = Hive.box('theme');
  final routeBox = Hive.box('route');

  final CategoryService _categoryService = CategoryService();
  List<CategoryModel> categories = [];

  var categoryNameController = TextEditingController();
  var categoryDescriptionController = TextEditingController();
  CategoryModel? categoryModel;

  String get getCurrentRoute =>
      routeBox.get('currentRoute', defaultValue: '/HomePage');

  set setCurrentRoute(String route) {
    routeBox.put('currentRoute', route);
  }

  bool _isLogin = true;
  bool _isFilled = false;

  bool get getIsLogin => _isLogin;
  bool get getIsFilled => _isFilled;

  set setIsFilled(bool condition) {
    _isFilled = condition;
  }

  setIsLogin() {
    _isLogin = !_isLogin;
    notifyListeners();
  }

// boş veri kontrolü sağlanır aksi takdirde kullanıcıya uyarı verilir.
  void isNotBlank() {
    if (!_isLogin) {
      if (categoryNameController.text.isEmpty ||
          categoryDescriptionController.text.isEmpty) {
        _isFilled = false;
        notifyListeners();
      } else {
        _isFilled = true;
        notifyListeners();
      }
    }
  }

// get all category
  Future<List<CategoryModel>> getAllCategories() async {
    categories = (await _categoryService.getCategories())!;
    return categories;
  }

  // get category by id
  Future<CategoryModel?> getCategoryById(String categoryId) async {
    try {
      CategoryModel? category = await _categoryService.getCategory(categoryId);
      if (category != null) {
        // Kategori bulundu
        print('Kategori adı: ${category.categoryName}');
        return category;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
    return null;
  }

  // Kategori ekleme işlemi
  Future<void> addCategory() async {
    CategoryModel categoryModel = CategoryModel(
        categoryName: categoryNameController.text.trim(),
        categoryDescription: categoryDescriptionController.text.trim());

    try {
      await _categoryService.addCategory(categoryModel);
      // Kategoriyi ekledikten sonra kategorileri tekrar çek ve güncelle
      await getAllCategories();
    } catch (e) {
      print(e);
    }
    categoryNameController.clear();
    categoryDescriptionController.clear();
    setIsFilled = false;
  }

  // Kategori silme işlemi
  Future<void> deleteCategory(String categoryId) async {
    try {
      await _categoryService.deleteCategory(categoryId);
      // Kategoriyi sildikten sonra kategorileri tekrar çek ve güncelle
      await getAllCategories();
    } catch (e) {
      print(e);
    }
  }
}
