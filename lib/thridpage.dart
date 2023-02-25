import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterdemo/secoundpage.dart';
import 'package:http/http.dart' as http;

import 'add_food.dart';
import 'apppage.dart';
import 'forthpage.dart';

const IconData cake = IconData(0xe120, fontFamily: 'MaterialIcons');
const IconData local_pizza_outlined =
IconData(0xf188, fontFamily: 'MaterialIcons');
const IconData cookie = IconData(0xf04d9, fontFamily: 'MaterialIcons');
const IconData local_drink = IconData(0xe391, fontFamily: 'MaterialIcons');
const IconData icecream = IconData(0xe331, fontFamily: 'MaterialIcons');
const IconData fastfood = IconData(0xe25a, fontFamily: 'MaterialIcons');

class ThridPage extends StatefulWidget {
  const ThridPage({Key? key}) : super(key: key);

  @override
  State<ThridPage> createState() => _ThridPageState();
}

class _ThridPageState extends State<ThridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Categories",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_alert),
            color: Colors.purple,
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.menu_open_sharp,color: Colors.purple,
                    ),
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      color: Color(0xFFAB47BC),
                    ),
                    hintText: 'Search hear',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.purple,
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                          const ThridPage()),
                                    );
                                  },
                                  icon: Icon(
                                    Icons.cake,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.local_pizza,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.cookie,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.local_drink_sharp,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.icecream,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.fastfood,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Cakes Menu",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Stack(
                      children: [
                        Container(
                          width: 150,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/cake1.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 80, left: 40),
                            child: Text("Birthday cakes",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: Stack(
                        children: [
                          Container(
                            width: 150,
                            height: 200,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/aniversaricake.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 80, left: 40),
                              child: Text("Anniversary",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Stack(
                      children: [
                        Container(
                          width: 150,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/cupcake.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 80, left: 40),
                            child: Text("Cup cake",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Stack(
                      children: [
                        Container(
                          width: 150,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/engejment.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 80, left: 40),
                            child: Text("Engejment cakes",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Stack(
                      children: [
                        Container(
                          width: 150,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              'assets/images/weddingcake.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 80, left: 40),
                            child: Text("Wedding cake",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: Stack(
                        children: [
                          Container(
                            width: 150,
                            height: 200,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/pinatacake.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 80, left: 40),
                              child: Text("Pinnata Cake",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FutureBuilder<http.Response>(
              builder: (context, snapshot) {
                if (snapshot != null && snapshot.hasData) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(
                            MaterialPageRoute(

                              builder: (context) => AddFood(
                                  jsonDecode(snapshot.data!.body.toString())[index]),
                            ),
                          )
                              .then(
                                (value) {
                              if (value == true) {
                                setState(() {});
                              }
                            },
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(20)
                              ),
                              height: 200,
                              width: double.infinity,
                              child: Image(
                                  image: NetworkImage((jsonDecode(
                                      snapshot.data!.body.toString())[index]
                                  ['avatar'])
                                      .toString())),
                            ),
                            Text(
                              (jsonDecode(snapshot.data!.body.toString())[index]
                              ['name'])
                                  .toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(
                                        MaterialPageRoute(
                                          builder: (context) => AddFood(jsonDecode(
                                              snapshot.data!.body.toString())[index]),
                                        ),
                                      )
                                          .then(
                                            (value) {
                                          if (value == true) {
                                            setState(() {});
                                          }
                                        },
                                      );
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(15),
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        // borderRadius: BorderRadius.circular(20),
                                          border: Border.all(),
                                          color: Colors.green),
                                      child: Text(
                                        "Edit",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      deleteFood((jsonDecode(snapshot.data!.body
                                          .toString())[index]['id']))
                                          .then(
                                            (value) {
                                          setState(() {});
                                        },
                                      );
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(15),
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        // borderRadius: BorderRadius.circular(20),
                                          border: Border.all(),
                                          color: Colors.red),
                                      child: Text("Delete",
                                          style: TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    itemCount: jsonDecode(snapshot.data!.body.toString()).length,
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
              future: getFood(),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.purple,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.of(context).pop(MaterialPageRoute(
                    builder: (context) => apppage(),
                  ));
                },
                icon: Icon(Icons.home_filled, color: Colors.white,),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.of(context).pop(MaterialPageRoute(
                    builder: (context) => page(),
                  ));
                },
                icon: Icon(Icons.favorite, color: Colors.white,),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AddFood(null),
                  ));
                },
                icon: Icon(Icons.add, color: Colors.white,),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ForthPage(),
                  ));
                },
                icon: Icon(Icons.dataset, color: Colors.white,),
              ),
              label: ""),
        ],
      ),
    );
  }

  Future<http.Response> getFood() async {
    var response = await http
        .get(Uri.parse("https://637f5cd65b1cc8d6f942aebf.mockapi.io/students"));
    return response;
  }

  Future<void> deleteFood(id) async {
    var response1 = await http.delete(
        Uri.parse("https://637f5cd65b1cc8d6f942aebf.mockapi.io/students/$id"));
  }
}