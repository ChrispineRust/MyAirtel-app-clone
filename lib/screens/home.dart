import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int _number = 0990770515;
  double multiplier = 0.1;
  List<String> assets = [
    'assets/images/airtel_image1.png',
    'assets/images/airtel_image2.png',
    'assets/images/Chezani-Banner.png',
  ];


  _appBar(screenWidth, screenHeight) {
    return AppBar(
      scrolledUnderElevation: 0,
      title: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset('assets/icons/airtel_appbar.png'),
                  ),
                  const Text(

                    "airtel",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontFamily: 'Ubuntu',
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.qr_code_scanner_sharp),
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications),
                    color: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
      backgroundColor: Colors.red,
    );
  }

  _bodyUI(screenWidth, screenHeight) {
    return ListView(
      children: [
        SizedBox(
          height: 330,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                child: Container(
                  color: Colors.red,
                  width: MediaQuery.of(context).size.width * 1,
                  height: 50,
                ),
              ),
              Container(),
              //manage accounts container - top most container
              _manageAccountContainer(),
              //view balance container
              _airtelMoneyContainer(),
              //chains holding view balance container
              _chainDivider(screenWidth),
              //empty circle linked to vertical dividers
              _circleLinkers(screenWidth),
            ],
          ),
        ),
        //quick actions container
        _quickActionsContainer(),

        SizedBox(
          height: 100,
          child: Stack(
            children: [
              _imageCarousel(screenWidth),
            ],
          ),
        ),

        _buildOffersSection(),  // Call the function here to add it to the ListView
      ],
    );

  }

  _manageAccountContainer() {
    return Positioned(
      top: 0,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.98,
        height: 210,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(50, 33, 33, 33),
              blurRadius: 6.0,
              spreadRadius: 2.0,
              offset: Offset(0.0, 1.5),
            )
          ],
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
                top: 8.0,
                right: 10.0,
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      const Text(
                        "CHRISPINE DZIMBIRI",
                      ),
                      Text(


                        "Prepaid - $_number",
                        style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontFamily: 'Ubuntu',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 36,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Manage Account",
                        style: TextStyle(
                          color: Color.fromRGBO(82, 134, 227, 1),
                          fontFamily: 'Ubuntu',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.grey.shade400,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // _getAirtimeBalance(191.04).toString(),
                        "-1,553.76",
                        style: TextStyle(
                          color: Colors.blueGrey.shade700,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "MWK",
                        style: TextStyle(
                          color: Color.fromARGB(255, 242, 16, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const Text(
                        "Airtime Balance",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                    height: 50,
                    child: VerticalDivider(
                      color: Colors.grey.shade400,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // _getVoiceBalance(45.00).toString(),
                        "45.00",
                        style: TextStyle(
                          color: Colors.blueGrey.shade700,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "Mins",
                        style: TextStyle(
                          color: Color.fromARGB(255, 242, 16, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "Voice Balance",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                    height: 50,
                    child: VerticalDivider(
                      color: Colors.grey.shade400,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        //_getDataBalance(845.35).toString(),
                        "8.71",
                        style: TextStyle(
                          color: Colors.blueGrey.shade700,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "GB",
                        style: TextStyle(
                          color: Color.fromARGB(255, 242, 16, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "Data Balance",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.grey.shade400,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: const Color.fromARGB(10, 255, 0, 0),
                    ),
                    width: 170,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.archive_outlined,
                          color: Colors.red,
                        ),
                        TextButton(onPressed: (){}, child:
                        const Text(
                          'Buy Bundles',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            // letterSpacing: 2,
                          ),
                        ),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(10, 255, 0, 0),
                    ),
                    width: 180,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.bolt_sharp,
                          color: Colors.red,
                        ),
                        TextButton(onPressed: (){}, child:

                          const Text(
                            'Self Recharge',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              // letterSpacing: 2,
                            ),
                          ),),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 158, 158, 158),
                    ),
                    width: 20,
                    height: 7,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 158, 158, 158),
                    ),
                    width: 20,
                    height: 7,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _quickActionsContainer() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 250,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Quick Actions",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "View All",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(10, 255, 0, 0),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Icon(
                            Icons.star_outline,
                            color: Color.fromARGB(255, 242, 16, 0),
                            size: 30,
                          ),
                        ),
                        Text(
                          "My Favorites",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade900,
                          ),
                        ),
                      ],
                    ),
                    //space between columns
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(10, 255, 0, 0),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Icon(
                            Icons.attach_money,
                            color: Color.fromARGB(255, 242, 16, 0),
                            size: 30,
                          ),
                        ),
                        Text(
                          "Withdraw Cash",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade900,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(10, 255, 0, 0),
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(
                            Icons.phone_android_rounded,
                            color: Color.fromARGB(255, 242, 16, 0),
                            size: 30,
                          ),
                        ),
                        Text(
                          "Recharge",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade900,
                          ),
                        ),
                      ],
                    ),
                    //space between columns
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(10, 255, 0, 0),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Icon(
                            Icons.account_balance_wallet_rounded,
                            color: Color.fromARGB(255, 242, 16, 0),
                            size: 30,
                          ),
                        ),
                        Text(
                          "Bank to Wallet",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.blueGrey.shade900,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(10, 255, 0, 0),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Icon(
                            Icons.archive,
                            color: Color.fromARGB(255, 242, 16, 0),
                            size: 30,
                          ),
                        ),
                        Text(
                          "Buy Bundle",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade900,
                          ),
                        ),
                      ],
                    ),
                    //space between columns
                    const SizedBox(
                      height: 20,
                    ),
                    Column(children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(10, 255, 0, 0),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Icon(
                          Icons.receipt,
                          color: Color.fromARGB(255, 242, 16, 0),
                          size: 30,
                        ),
                      ),
                      Text(
                        "Pay Bills",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade900,
                        ),
                      ),
                    ]),
                  ],
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(10, 255, 0, 0),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Icon(
                            Icons.forward,
                            color: Color.fromARGB(255, 242, 16, 0),
                            size: 30,
                          ),
                        ),
                        Text(
                          "Send Money",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade900,
                          ),
                        ),
                      ],
                    ),
                    //space between columns
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(10, 255, 0, 0),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Icon(
                            Icons.qr_code_scanner_rounded,
                            color: Color.fromARGB(255, 242, 16, 0),
                            size: 30,
                          ),
                        ),
                        Text(
                          "Scan & Pay",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade900,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _airtelMoneyContainer() {
    return Positioned(
      top: 233,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(50, 33, 33, 33),
              blurRadius: 6.0,
              spreadRadius: 2.0,
              offset: Offset(0.0, 1.5),
            )
          ],
          color: Colors.white,
        ),
        width: MediaQuery.of(context).size.width * 0.98,
        height: 70,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.account_balance_wallet_rounded,
                        color: Color.fromARGB(255, 242, 16, 0),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Airtel Money",
                        style: TextStyle(
                          color: Color.fromARGB(255, 242, 16, 0),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "MWK",
                        style: TextStyle(
                          color: Color.fromARGB(255, 242, 16, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "XXXXXXXXXX",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.black, width: 2),
                      ),
                      child: const Text(
                        "view Balance",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _chainDivider(screenWidth) {
    return Positioned(
      top: 203.0,
      left: screenWidth * 0.1,
      right: screenWidth * 0.1,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 10,
            height: 28,
            child: VerticalDivider(
              color: Color.fromARGB(200, 158, 158, 158),
              thickness: 1,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 10,
            height: 28,
            child: VerticalDivider(
              color: Color.fromARGB(200, 158, 158, 158),
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }

  _circleLinkers(screenWidth) {
    return Positioned(
      top: 230.0,
      left: screenWidth * multiplier,
      right: screenWidth * multiplier,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.circle_outlined,
            color: Color.fromARGB(190, 71, 71, 71),
            size: 6,
            weight: 10,
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.circle_outlined,
            color: Color.fromARGB(190, 71, 71, 71),
            size: 6,
          ),
        ],
      ),
    );
  }

  _imageCarousel(screenWidth) {
    return SizedBox(
      height: 130,
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider.builder(
        options: CarouselOptions(
          aspectRatio: 16 / 9,
          viewportFraction: 0.75,
          initialPage: 1,
          enableInfiniteScroll: false,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 5),
          autoPlayAnimationDuration: const Duration(milliseconds: 1500),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          // onPageChanged: (){},
          scrollDirection: Axis.horizontal,
        ),
        itemCount: assets.length,
        itemBuilder: (context, index, realIndex) {
          return Container(
            margin: const EdgeInsets.only(left: 2, right: 2),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(100, 158, 158, 158),
                  blurRadius: 6,
                  spreadRadius: 2,
                  offset: Offset(0, 0),
                  blurStyle: BlurStyle.normal,
                )
              ],
            ),
            child: Image.asset(
              assets[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }




  _buildOffersSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'BEST OFFERS',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'All Offers',
                style: TextStyle(
                  color: Colors.blue[400],
                ),
              )
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 5, 8, 10),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(Icons.label, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    width: 305,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '34 Minutes',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text('Validity & day'),
                              ],
                            ),
                            Column(
                              children: [
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'MWK ',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      TextSpan(
                                        text: '700',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 8.0),
                    child: Container(
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Manage Your \nFavourites',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 45,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                color: Colors.lightBlueAccent.withOpacity(0.8),
                              ),
                              child: const Icon(Icons.star, color: Colors.white),
                            ),
                          ),
                        ],
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




  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double height = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 70, 20, 17),
      appBar: _appBar(width, height),
      body: _bodyUI(width, height),
    );
  }
}
