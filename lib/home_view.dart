import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Don't Show Drawer Icon Widget
        toolbarHeight: 200,
        flexibleSpace: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.menu,
                          color: Theme.of(context).primaryColor,
                          ),
                          Text("Menu",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor,
                          )
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Expanded(child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("lib/images/sem.png",
                        height: 50,
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Seminar Planner",
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )
                        )
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Young & Elderly People \n Professionals",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 15,
                              color: Colors.white,
                            )
                        ),
                      ],
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/images/sem2.jpg'), // Your image asset
                    fit: BoxFit.cover, // Adjust this as needed
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 250,
                      width: double.infinity,
                      padding: EdgeInsets.only(top: 30,left: 20),
                      decoration: BoxDecoration(
                          // color: Colors.green
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.arrow_drop_down,
                          color: Colors.white,
                            size: 30,
                          ),
                          Icon(Icons.arrow_drop_down,
                            color: Colors.white,
                            size: 30,
                          ),
                          Icon(Icons.arrow_drop_down,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 250,
                        width: size.width / 2,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor.withOpacity(0.7),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(size.width / 2),
                            bottomLeft: Radius.circular(size.width / 2),
                          )
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Hello!",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )
                            ),
                            SizedBox(height: 10,),
                            Text("Book Your Slot!",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  fontSize: 15,
                                  color: Colors.white,
                                )
                            ),
                            SizedBox(height: 10,),
                            Text("Attend Your Event!",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  fontSize: 15,
                                  color: Colors.white,
                                )
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.home_repair_service_sharp,
                          size: 30,
                            color: Colors.white,
                          ),
                          SizedBox(height: 10,),
                          Text("Book Your Slot",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                fontSize: 17,
                                color: Colors.white,
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      height: 125,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor.withOpacity(0.8)
                    ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.my_library_books,
                            size: 30,
                            color: Colors.white,
                          ),
                          SizedBox(height: 10,),
                          Text("My Bookings",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                fontSize: 17,
                                color: Colors.white,
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Color(0xff686848)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.dynamic_feed,
                            size: 30,
                            color: Colors.white,
                          ),
                          SizedBox(height: 10,),
                          Text("Give Feedback",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                fontSize: 17,
                                color: Colors.white,
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Divider(
                color: Theme.of(context).primaryColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '\u00A9 All Rights Reserved, 2023',
                    style: TextStyle(
                      fontSize:
                      15.0, // Adjust the font size as needed
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
