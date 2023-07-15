part of 'home_page.dart';
class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  _HomePageBodyState createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  bool showAllCategories = false; // Tüm kategoriler gösteriliyor mu

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    List<String> categories = CategoryPage.categories;
    List<bool> isSelectedList = List<bool>.filled(3, false); // Sadece 3 kategori gösterilecek

    List<String> displayedCategories = showAllCategories ? categories : categories.sublist(0, 3);
    bool showPlusButton = categories.length > 3 && !showAllCategories;
    int remainingCategories = categories.length - 3;

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceVariant,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.content_paste, size: 50),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "GÖNDERİ BAŞLIĞI",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "tarih: ",
                              style: TextStyle(
                                fontSize: 14,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "gönderi ayrıntıları",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 10, right: 10),
                        child: SizedBox(
                          height: 40,
                          width: 90,
                          child: RawMaterialButton(
                            fillColor: theme.colorScheme.surfaceTint,
                            padding: const EdgeInsets.only(bottom: 0, right: 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            onPressed: () {
                              // Butona tıklanınca yapılacak işlemler
                            },
                            child: const Text(
                              "detaylar",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 8,
                children: [
                  ...displayedCategories.map((category) {
                    final bool isSelected = isSelectedList[categories.indexOf(category)];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          isSelectedList[categories.indexOf(category)] = !isSelected;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(4),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: isSelected ? Color.fromARGB(255, 125, 122, 122) : Color.fromARGB(255, 207, 205, 205),
                          borderRadius: BorderRadius.circular(30.0),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Text(
                          category,
                          style: TextStyle(
                            color: isSelected ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                  if (showPlusButton)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          showAllCategories = true;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(4),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 207, 205, 205),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Text(
                          "+ $remainingCategories",
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  if (showAllCategories)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          showAllCategories = false;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(4),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 207, 205, 205),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: const Text(
                          "-",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CategoryPage {
  static List<String> categories = ['Software','SKOSS','ADDDW',];
}
