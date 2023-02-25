
import 'package:flutter/material.dart';
import 'package:flutterdemo/secoundpage.dart';


class apppage extends StatelessWidget {
  const apppage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: Colors.purple,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              size: 20,
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      color: Colors.blueGrey[50],
                      child: Image.asset(
                        'assets/images/cake.jpg',
                        width: 250,
                        height: 250,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all((16.0)),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Text(
                        " Choco Birthday ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        " Cake ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "  \$ 22",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ],
                ),
                Column(
                  children:<Widget> [
                    Container(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("4.8"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.access_alarm,
                            color: Colors.yellow,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("180 Calories"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.alarm,
                            color: Colors.redAccent,
                          ),
                        ),
                        Text("2-4 days"),



                      ],),)
                  ],),

                Row(
                  children: [
                    Text(
                      "Details",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(

                      alignment: Alignment.topLeft,
                      child: Text(
                        "The cake is a swetly  cake that consist of choclate cake that consist of ",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 10,color: Colors.grey),
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "The cake is a swetly  cake that consist of choclate of choclate cake that ",
                    style:
                    TextStyle(fontWeight: FontWeight.normal, fontSize: 10,color: Colors.grey),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "The cake is a swetly  cake that consist of choclate of choclate cake that  ",
                    style:
                    TextStyle(fontWeight: FontWeight.normal, fontSize: 10,color: Colors.grey),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "The cake is a swetly  cake that consist of choclate  of choclate cake that ",
                    style:
                    TextStyle(fontWeight: FontWeight.normal, fontSize: 10,color: Colors.grey),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.purple)),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "20 cm",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: TextButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.purple)),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "25 cm",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.purple)),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                "30 cm",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(child: Text("19 cm"),
                              onPressed: () => print("it's pressed"),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.purple, onPrimary: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.purple,
                            child: Icon(Icons.favorite,
                              color: Colors.white,),

                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 250.0,

                              child: ElevatedButton(

                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const page()),
                                  );
                                },
                                style:ElevatedButton.styleFrom(
                                  primary: Colors.white, onPrimary: Colors.purple,
                                  shape:
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.purple)

                                  ),
                                ),
                                child: Text("Add To Cart",style: TextStyle(color: Colors.black),),
                              ),
                            ),
                          )


                        ],
                      ),),
                  ],
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}