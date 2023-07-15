class CategoryModel {
  String? categoryId;
  String? categoryName;



  CategoryModel({
    this.categoryId,
    required this.categoryName,
  });

   // Firebase Firestore'dan dökümanı okuyup Category nesnesine dönüştüren metot

  CategoryModel.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    categoryName = json['categoryName'];

    
  }

  // Category nesnesini Firebase Firestore'a yazmak için kullanılacak metot

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['categoryId'] = categoryId;
    data['categoryName'] = categoryName;

    return data;
  }

  CategoryModel.demo();
}