class CategoryModel {
  String? categoryId;
  String? categoryName;
  String? categoryDescription;


  CategoryModel({
    this.categoryId,
    required this.categoryName,
    required this.categoryDescription
  });

   // Firebase Firestore'dan dökümanı okuyup Category nesnesine dönüştüren metot

  CategoryModel.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    categoryName = json['categoryName'];
    categoryDescription = json['categoryDescription'];
    
  }

  // Category nesnesini Firebase Firestore'a yazmak için kullanılacak metot

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['categoryId'] = categoryId;
    data['categoryName'] = categoryName;
    data['categoryDescription'] = categoryDescription; 
    return data;
  }
}