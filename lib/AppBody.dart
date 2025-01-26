import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AppBody extends StatefulWidget {
  const AppBody({super.key});

  @override
  State<AppBody> createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  List<Map> productCard = [
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR19GznNbny25v6AByxmZsdItDwjXxmxY728w&s", "name": "Dolo-650 Strip of 15", "condition": "Tablet", "price": "55.00"},
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyeX6Er0J0MIatreMr0II_5Lgy10WwXHeIPw&s", "name": "Bevon Bottle of 15 ml", "condition": "Drops", "price": "85.00"},
    {"img": "https://m.media-amazon.com/images/I/71HY05f++HL._SS400_.jpg", "name": "Glucon-D Instant Energy", "condition": "Drink", "price": "40.00"},
    {"img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD2V9hbR9l4mNW_EyyvvTv2x2ipr5hUdwa2w&s", "name": "Pears Pure and Gentle Body Wash 250 ml", "condition": "Lequid", "price": "50.00"},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              cursorHeight: 20,
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintText: "Search here",
                  hintStyle: TextStyle(color: Colors.grey),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black))),
            ),
            SizedBox(
              height: 17,
            ),
            Row(
              children: [
                Container(
                  height: 27,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.greenAccent,
                  ),
                  child: Center(
                    child: Text(
                      "All",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 27,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey)),
                  child: Center(
                    child: Text(
                      "GSL",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 27,
                  width: 62,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey)),
                  child: Center(
                    child: Text(
                      "Vitamin",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 27,
                  width: 155,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey)),
                  child: Center(
                    child: Text(
                      "Pharmacy Medicines",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: productCard.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: .55,
                  crossAxisCount: 3),
              itemBuilder: (context, index){
                return StoreCardWidget(img: productCard[index]["img"], name: productCard[index]["name"], condition: productCard[index]["condition"], price: productCard[index]["price"],);
              } ,)
          ],
        ),
      ),
    );
  }
}

class StoreCardWidget extends StatelessWidget {
  const StoreCardWidget({
    super.key, required this.img, required this.name, required this.condition, required this.price,
  });

  final String img;
  final String name;
  final String condition;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 130,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: NetworkImage(img)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              name, maxLines: 2,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              condition,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text("\$$price"),
          ],
        ),
      ),
    );
  }
}
