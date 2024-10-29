import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/controller/category_controller.dart';
import 'package:shopping_app/controller/product_screen_controller.dart';
import 'package:shopping_app/main.dart';
import 'package:shopping_app/view/product_screen/product_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        context.read<ProductScreenController>().getFetcheddata();
        context.read<CategoryController>().getdata();
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List mydata = [
      {
        "bg":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdTkqo1E52aWMchC45I2AD-tTRp0KhGzR4zQ&s",
        "name": "Regular Fit Slogan T-Shirt",
        "price": "1000 RS",
      },
      {
        "bg":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIyOIGjJHWf4_d5-3ZWjYc_2JDDJ5zjL-yMA&s",
        "name": "Classic V-Neck Sweater",
        "price": "1200 RS",
      },
      {
        "bg":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKmjQ1WJiDJ59R8aiaK5spwUUr5yqODvgnXQ&s",
        "name": "Slim Fit Graphic Tee",
        "price": "800 RS",
      },
      {
        "bg":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdwxFV751c6nsXyu3R9OSG95Y8whpH8a64Cw&s",
        "name": "Casual Denim Jacket",
        "price": "1500 RS",
      },
      {
        "bg":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTljPCbyhmkwtLPmN0TxBffNYP6LTWvVImHiQ&s",
        "name": "Chino Pants",
        "price": "1100 RS",
      },
      {
        "bg":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxZ3-Q_4QnKBRQoVzMt7w7nrKaM6lMsHQjxA&s",
        "name": "Sporty  Jacket",
        "price": "1400 RS",
      },
      {
        "bg":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTffBsU91uNm382AEHdXt0FwmZBP4tUcFyC7Q&s",
        "name": "Elegant A-Line Dress",
        "price": "2200 RS",
      },
      {
        "bg":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAyr8CIN8gA7o9LrHOOkvsRsYVo0SCPXJB5g&s",
        "name": "Comfortable Jogger Pants",
        "price": "900 RS",
      }
    ];
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.home_outlined,
                    size: 30,
                  ),
                  Text(
                    "Home",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.favorite_outline_rounded,
                    size: 30,
                  ),
                  Text(
                    "Saved",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.local_mall_outlined,
                    size: 30,
                  ),
                  Text(
                    "Cart",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.settings_outlined,
                    size: 30,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(
            "Discover",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
          ),
          actions: [
            Stack(
              children: [
                Icon(
                  Icons.notifications_outlined,
                  color: Colors.black,
                  size: 35,
                ),
                Positioned(
                  right: 0,
                  top: 2,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.black,
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.white, fontSize: 8),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(width: 20)
          ],
        ),
        body: Consumer<ProductScreenController>(
          builder: (context, providerObj, child) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 230, 228, 228),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              SizedBox(width: 15),
                              Icon(
                                Icons.search_outlined,
                                color: Colors.black,
                                size: 35,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Search Anything",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(
                                        255, 129, 129, 129),
                                    fontSize: 16),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        child: Icon(
                          Icons.filter_list,
                          color: Colors.white,
                          size: 35,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Consumer<CategoryController>(
                    builder: (context, categoryObj, child) =>
                        SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                          categoryObj.categorylist.length,
                          (index) => Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey,
                              ),
                              height: 50,
                              child: Center(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  categoryObj.categorylist[index],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GridView.builder(
                    itemCount: providerObj.responsObj?.length ?? 0,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        mainAxisExtent: 250,
                        crossAxisSpacing: 10),
                    itemBuilder: (context, index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProductScreen(),
                                  )),
                              child: providerObj.isLoading == true
                                  ? CircularProgressIndicator()
                                  : Container(
                                      height: 180,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(providerObj
                                                      .responsObj?[index].image
                                                      .toString() ??
                                                  "nodata"))),
                                    ),
                            ),
                            Positioned(
                              right: 10,
                              top: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                ),
                                height: 35,
                                width: 35,
                                child: Icon(
                                  Icons.favorite_outline,
                                  size: 25,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                        Text(
                          providerObj.responsObj?[index].title.toString() ?? "",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                            textAlign: TextAlign.left,
                            providerObj.responsObj?[index].price.toString() ??
                                ""),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
