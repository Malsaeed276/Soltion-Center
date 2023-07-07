import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  String postText = '';
  final List<String> categories = ['Kategori 1', 'Kategori 2', 'Kategori 3', 'Kategori 4', 'Kategori 5', 'Kategori 6'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Anasayfa',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Bildirimler butonuna tıklandığında yapılacak işlemler
              print('Bildirimler butonuna tıklandı');
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Profil butonuna tıklandığında yapılacak işlemler
              print('Profil butonuna tıklandı');
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kullanıcının Bilgileri',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Gönderi',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Gönderinizi buraya girin',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    postText = value;
                  },
                ),
                SizedBox(height: 16),
                Text(
                  'Tarih: 7 Temmuz 2023',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 16),
                Wrap(
                  spacing: 8,
                  children: [
                    for (var i = 0; i < categories.length; i++)
                      CategoryButton(text: categories[i]),
                    if (categories.length > 3)
                      CategoryButton(text: "+${categories.length - 3}"),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Align(
            alignment: Alignment.topRight,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PostDetailPage(postText: postText),
                  ),
                );
              },
              child: Text('Detaylar'),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String text;

  CategoryButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Kategori düğmesine tıklandığında yapılacak işlemler
        print('$text düğmesine tıklandı');
      },
      child: Text(text),
    );
  }
}

class PostDetailPage extends StatelessWidget {
  final String postText;

  PostDetailPage({required this.postText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gönderi Detayları'),
      ),
      body: Center(
        child: Text(postText),
      ),
    );
  }
}
