import 'package:flutter/material.dart';

class AirtelMoney extends StatefulWidget {
  const AirtelMoney({super.key});

  @override
  State<AirtelMoney> createState() => _AirtelMoneyState();
}

class _AirtelMoneyState extends State<AirtelMoney>{

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

_manageAccountContainer() {
  return Positioned(
    top: 0,
    child: Container(
      width: MediaQuery.of(context).size.width * 0.95,
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
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
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

                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Text(
                      "CHRISPINE | 990770515",
                    ),
                    Text(
                      "Airtel Money Balance",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'Ubuntu',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    border: const Border(
                      right: BorderSide(width: 1.0,color:Colors.redAccent),
                      top: BorderSide(width: 1.0,color:Colors.redAccent),
                      bottom: BorderSide(width: 1.0,color:Colors.redAccent),
                      left: BorderSide(width: 1.0,color:Colors.redAccent),
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 3),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child:
                          const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Icon(Icons.qr_code,size: 20,color: Colors.white,),
                          ),
                        ),
                        const SizedBox(width: 10.0,),
                        const Text("My QR",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0
                        ),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          const Divider(height: 5.0,thickness: 0.7,),
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 5.0),
            child: Row(
              children: [
                const Text("MWK ",style: TextStyle(
                  fontFamily: 'ubuntu',
                  fontSize: 16.0,
                ),),
                Row(
                  children: [
                    const Text("XXX,XXX",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0
                      ),
                    ),
                    const SizedBox(width: 10.0,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.redAccent,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Icon(Icons.visibility_off_outlined,size: 20,color: Colors.white,),
                      ),
                    ),
                  ],
                ),
              ],
            ),
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
                  width: 160,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.add_circle_outline,
                        color: Colors.red,
                      ),
                      TextButton(onPressed: (){}, child:
                      const Text(
                        'Bank to Wallet',
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
                  width: 175,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.remove_circle_outline,
                        color: Colors.red,
                      ),
                      TextButton(onPressed: (){}, child:

                      const Text(
                        'Withdraw Cash',
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
        ],
      ),
    ),
  );
}

_transferContainer() {
  return Positioned(
    top: 0,
    child: Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: 160,
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
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Transfer & Cashout",
                style: TextStyle(fontWeight: FontWeight.w800,
                fontFamily: 'ubuntu'),
                ),
              ],
            ),
            const SizedBox(height: 5,),
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
                          child: const Icon(
                            Icons.monetization_on_outlined,
                            color: Colors.blueGrey,
                            size: 35,
                          ),
                        ),
                        Text(
                          " Send\nmoney",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade900,
                          ),
                        ),
                      ],
                    ),
                    //space between columns
                  ],
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: const Icon(
                            Icons.local_print_shop_outlined,
                            color: Colors.blueGrey,
                            size: 35,
                          ),
                        ),
                        Text(
                          "Withdraw\n     Cash",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade900,
                          ),
                        ),
                      ],
                    ),
                    //space between columns
                  ],
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: const Icon(
                            Icons.account_balance,
                            color:Colors.blueGrey,
                            size: 35,
                          ),
                        ),
                        const Text(
                          "Bank to\n Wallet",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    //space between columns


                  ],
                ),
                Column(
                  children: [

                    //space between columns

                    Column(

                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: const Icon(
                            Icons.real_estate_agent_outlined,
                            color: Colors.blueGrey,
                            size: 35,
                          ),
                        ),
                        Text(
                          "   Airtel\n  Money\n Reversal",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontWeight: FontWeight.w400,
                            color: Colors.blueGrey.shade700,
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
    ),
  );
}

_rechargeContainer() {
  return Positioned(
    top: 0,
    child: Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: 250,
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
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Recharge & Bill Payments",
                  style: TextStyle(fontWeight: FontWeight.w800,
                      fontFamily: 'ubuntu'),
                ),
              ],
            ),
            const SizedBox(height: 15,),
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
                          child: const Icon(
                            Icons.phone_android_rounded,
                            color: Colors.blueGrey,
                            size: 35,
                          ),
                        ),
                        Text(
                          "Recharge",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade900,
                          ),
                        ),
                      ],
                    ),
                    //pakhale space
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: const Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.blueGrey,
                            size: 35,
                          ),
                        ),
                        Text(
                          "Goods &\nServices",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
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
                          child: const Icon(
                            Icons.event_note_sharp,
                            color: Colors.blueGrey,
                            size: 35,
                          ),
                        ),
                        Text(
                          "   Buy\nBundles",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade900,
                          ),
                        ),
                      ],
                    ),
                    //pakhale space
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: const Icon(
                            Icons.star_border,
                            color: Colors.red,
                            size: 35,
                          ),
                        ),
                        Text(
                          "      My\nFavourites",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
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
                          child: const Icon(
                            Icons.receipt_outlined,
                            color: Colors.blueGrey,
                            size: 35,
                          ),
                        ),
                        Text(
                          "Pay Bills",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade900,
                          ),
                        ),
                      ],
                    ),
                    //pakhale space
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: const Icon(
                            Icons.person_add_alt_outlined,
                            color: Colors.blueGrey,
                            size: 35,
                          ),
                        ),
                        Text(
                          "Refer &\n   Earn",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
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
                          child: const Icon(
                            Icons.qr_code_scanner_rounded,
                            color: Colors.blueGrey,
                            size: 35,
                          ),
                        ),
                        Text(
                          "Scan &\n   Pay",
                          style: TextStyle(
                            fontFamily: 'ubuntu',
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade900,
                          ),
                        ),
                      ],
                    ),
                  const SizedBox(height: 72,),
                  ],
                ),

              ],
            ),
          ],
        ),
      ),
    ),

  );
}

_twoButtons(){
  return Positioned(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 8.0,),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9),
            color: Colors.blue,
          ),
          width: 180,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextButton(onPressed: (){}, child:
              const Text(
                'Manage your\nFavourites',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  // letterSpacing: 2,
                ),
              ),

              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.lightGreen,
          ),
          width: 180,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextButton(onPressed: (){}, child:

              const Text(
                'My\nTransactions',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  // letterSpacing: 2,
                ),
              ),

              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Icon(
                  Icons.auto_graph,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  ),
  );

}

_bodyUI(screenWidth, screenHeight) {

 return SingleChildScrollView(
   child: Column(
     children: [
       SizedBox(
         height: 230,
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

             const SizedBox(height: 200),
             // _quickActionsContainer(),
             //view balance container
             //chains holding view balance container
             //empty circle linked to vertical dividers
           ],
         ),
       ),
       _transferContainer(),

    const SizedBox(height: 20,),

       _rechargeContainer(),

       const SizedBox(height: 20,),

       _twoButtons(),
     ],
   ),
 );
      //quick actions container
}

_bottomNavigation() {

  return NavigationBar(
    height: 60,
    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
    onDestinationSelected: (index) {
      setState(() {
      });
    },
    // indicatorColor: Colors.amber,
    destinations: [
      const NavigationDestination(
        //    selectedIcon: Icon(Icons.home, color: Colors.red,),
        icon: Icon(Icons.home, color: Colors.red,),
        label: 'Home',

      ),
      NavigationDestination(
        selectedIcon: SizedBox(
          height: 30,
          width: 30,
          child: Image.asset("assets/icons/airtel_money_icon.png"),
        ),
        icon: const Icon(Icons.account_balance_wallet),

        label: 'Airtel Money',
      ),


      const NavigationDestination(
        selectedIcon: Icon(Icons.menu),
        icon: Icon(Icons.menu_outlined),
        label: 'More',
      ),
    ],
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



// _transferContainer(){
//   return Container(
//     child: Column(
//       children: [
//         Text(
//           "Transfer & Cashout",
//
//         ),
//       ],
//     ),
//   );
// }




  @override
  Widget build(BuildContext context) {


    // ignore: unused_local_variable
    double height = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    double width = MediaQuery.of(context).size.width;
    return  Scaffold(
      backgroundColor: Colors.white70.withOpacity(0.9),

      appBar: _appBar(width, height),

      body:_bodyUI(width, height),
    );
  }
}
