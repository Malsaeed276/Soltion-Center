import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:soltion_center/models/category_model.dart';

import '../services/category_service.dart';

class CategoryController with ChangeNotifier {


  final CategoryService _categoryService = CategoryService();
  List<CategoryModel> categories = [];

  var categoryNameController = TextEditingController();
  var categoryDescriptionController = TextEditingController();
  CategoryModel? categoryModel;

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
        //TODO send back that the fields is empty
        notifyListeners();
      } else {
        _isFilled = true;
        notifyListeners();
      }
    }else {
      //TODO add the login error
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

  // get category by id
  Future<List<CategoryModel>?> getListOfCategoryById(List<String> categoriesID) async {
    try {
      List<CategoryModel>? categories = await _categoryService.getCategoryList(categoriesID);
      if (categories != null) {
        // Kategori bulundu
        categories.forEach((category) {
          print('Kategori adı: ${category.categoryName}');
        });
        return categories;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
    return null;
  }

  // add category
 Future<void> addCategory(List<CategoryModel> categories) async {
 
    for (var category in categories) {
      if (category.categoryName!.isEmpty) {
        _isFilled = false;
        notifyListeners();
        return;
      }

  }

  try {
    await _categoryService.addCategory(categories);
  
  } catch (e) {
    print(e);
  }

  // Gerekli alanlar doluysa veya giriş yapılmamışsa, temizleme işlemleri yapılır.
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
