import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:soltion_center/models/category_model.dart';

class CategoryService {
  // create instance of FirebaseFirestore
  final db = FirebaseFirestore.instance;


// get all categories
  Future<List<CategoryModel>?> getCategories() async {
    try {
      var querySnapshot = await db.collection("categories").get();

      List<CategoryModel> categories = querySnapshot.docs.map((doc) {
        // Veritabanından her bir belgeyi CategoryModel'e dönüştürüyoruz
        return CategoryModel.fromJson(doc.data());
      }).toList();

      return categories;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

  //get category by id
  Future<CategoryModel?> getCategory(String id) async {
    try {
      var data = await db.collection("categories").doc(id).get();

      return CategoryModel.fromJson(data.data()!);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }

// add category to db
  Future<void> addCategory(CategoryModel category)async {
      await db
        .collection("categories")
        .doc(category.categoryId)
        .set(category.toJson());
  }

  //TODO add categories to db
  // add categories to db
  // Input -> (List[CategoryModel] categories)

// delete category 
  Future<void> deleteCategory(String categoryId)async {    
      await db
        .collection("categories")
        .doc(categoryId)
        .delete();
  }

}
