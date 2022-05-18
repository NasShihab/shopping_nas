import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_nas/cart_add.dart';
import 'package:get/get.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

 bool isVisible = false;

// add remove number
final myController c = Get.put(myController());

// Color(0xFF84FFFF)
final List<int> clrr = [
  0xFF880E4F,
  0xFFF06292,
  0xFFFFB74D,
  0xFF558B2F,
  0xFFF50057,
  0xFF283593,
];

final List<String> itemm = [
  'Apple',
  'Vanilla',
  'Strawberry',
  'Pineapple',
  'Orange',
  'Banana'
];
final List<String> imgg = [
  'images/apple.png',
  'images/vanilla.png',
  'images/strawberry.png',
  'images/pineapple.png',
  'images/orange.png',
  'images/banana.png'
];

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsetsDirectional.only(start: 20, top: 20, end: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // First Line NAS
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Nas',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'What to you want sir/mam ???',
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/profile.png'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                CupertinoSearchTextField(
                  itemSize: 50,
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      'Top Flavours',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ), //flavor
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsetsDirectional.only(
                      start: 20, top: 20, end: 20, bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.orange[200],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 120,
                          height: 120,
                          child: Image.asset('images/vanilla.png'),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 150,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Vanilla Ice Creamm',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        '1 KG',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Icon(Icons.star),
                                          Text(
                                            '4.5',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.bolt_rounded),
                                          Text(
                                            '15',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 20),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Visibility(
                                            visible: isVisible,
                                            child: IconButton(
                                              onPressed: () {
                                                c.decreament();
                                                setState(() {
                                                  if (c.count <= 0 ){
                                                    isVisible = false;
                                                  }
                                                  else{
                                                    isVisible = true;
                                                  }
                                                });
                                              },
                                              icon: Icon(Icons.remove),
                                            ),
                                          ),
                                          Visibility(
                                            visible: isVisible,
                                            child: Obx(() => Text(
                                              '${c.count.toString()}',
                                              style: TextStyle(
                                                  fontSize: 25, fontWeight: FontWeight.bold),
                                            )),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              c.increament();
                                              setState(() {
                                                isVisible = true;
                                              });
                                            },
                                            icon: Icon(Icons.add),
                                          ),],
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      'Popular Ice Cream',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        width: 400,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: itemm.length,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.orange[200],
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      child: Image.asset('${imgg[index]}'),
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color(clrr[index]),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      child: Center(
                                        child: Text(
                                          '${itemm[index]}',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                ],
                              );
                            }),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),//end
              ],
            ),
          ),
        ),
      ),
    );
  }
}
