import 'package:flutter/material.dart';
import 'package:shopping_app/view/product_screen/product_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      body: Padding(
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
                                color: const Color.fromARGB(255, 129, 129, 129),
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "All",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 35,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 230, 228, 228),
                      ),
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Men",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 35,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 230, 228, 228),
                      ),
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Women",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 35,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 230, 228, 228),
                      ),
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Kids",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 35,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 230, 228, 228),
                      ),
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "T-Shirts",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(5),
                      height: 35,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 230, 228, 228),
                      ),
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          "Pants",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              GridView.builder(
                itemCount: mydata.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 200,
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
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(mydata[index]["bg"]))),
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
                      mydata[index]["name"],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(textAlign: TextAlign.left, mydata[index]["price"]),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
