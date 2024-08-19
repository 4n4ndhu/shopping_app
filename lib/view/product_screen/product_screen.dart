import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(5),
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Price",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 18),
                  ),
                  Text(
                    "1000 RS",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.local_mall_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Add to Cart",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Center(
            child: Text(
          "Details",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        )),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdTkqo1E52aWMchC45I2AD-tTRp0KhGzR4zQ&s")),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  Positioned(
                    top: 50,
                    right: 30,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 228, 227, 227),
                          borderRadius: BorderRadius.circular(5)),
                      child: Icon(
                        Icons.favorite_outline,
                        size: 35,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Regular fit slogan",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 30,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "4.5/5",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  SizedBox(width: 3),
                  Text(
                    "(45 reviews)",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "The name says it all, the right size slightly snugs the body leaving enough room for comfort in the sleeves and waist.",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Choose size",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                        border: Border.all(width: 2, color: Colors.grey)),
                    child: Center(
                        child: Text(
                      "S",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                        border: Border.all(width: 2, color: Colors.grey)),
                    child: Center(
                        child: Text(
                      "M",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                        border: Border.all(width: 2, color: Colors.grey)),
                    child: Center(
                        child: Text(
                      "L",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
