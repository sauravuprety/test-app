import 'package:flutter/material.dart';
import 'color.dart';

class AllService extends StatelessWidget {
  const AllService({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const AllService()),
        );
        return false; // Return false to prevent the default back button behavior
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: topappbarColor,
          // title: const Text('Service App'),
          leading: const SizedBox(
            width: 40,
            child: Icon(
              Icons.location_pin,
              color: iconColor,
              size: 35,
            ),
          ),
          title: Center(
            child: SizedBox(
              width: 220,
              height: 35,
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Search for Services",
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Icon(Icons.search,
                        color: Color.fromARGB(255, 120, 117, 117)),
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 231, 227, 227),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 120, 117, 117),
                  ),
                ),
              ),
            ),
          ),
          actions: const [
            SizedBox(
              width: 50,
              child: Icon(
                Icons.notifications_active,
                color: iconColor,
                size: 35,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  color: bacColor,
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Car Services",
                          style: TextStyle(color: textColor, fontSize: 20),
                        ),
                        const Text(
                          "Remember us for car service Remember us for car service",
                          style: TextStyle(color: textColor, fontSize: 12),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AllService(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              foregroundColor: cardtextColor,
                              backgroundColor: iconBacColor,
                              padding: const EdgeInsets.all(6)),
                          child: const Text("Book Now"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Showing 1 - 15 out of 3415 Services",
                      style: TextStyle(
                        fontSize: 14,
                        color: cardtextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AllService(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: cardtextColor,
                        backgroundColor: iconBacColor,
                        // padding: const EdgeInsets.all(4),
                      ),
                      child: const Text("Sort By"),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 240,
                    // mainAxisSpacing: 4,
                    // crossAxisSpacing: 4,
                  ),
                  itemCount: 500,
                  itemBuilder: (BuildContext, int) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                                "https://images.unsplash.com/photo-1575936123452-b67c3203c357?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D"),
                            // Image.asset(
                            //   'assets/images/lady1.jpg',
                            //   fit: BoxFit.contain,
                            //   // height: 40,
                            // ),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Cleaning",
                                      style: TextStyle(
                                          color: cardtextColor,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    // Icon(
                                    //   Icons.star_rate,
                                    // ),
                                    const Text(
                                      "Get Cleaning Servie Anywhere Anytime",
                                      style: TextStyle(color: cardtextColor),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "Rs.1,000",
                                          style: TextStyle(
                                              color: cardtextColor,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        // const SizedBox(
                                        //     width:
                                        //         60.0), // Adjust the width as needed
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const AllService(),
                                              ),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                            foregroundColor: iconforColor,
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 231, 227, 227),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                          child: const Icon(
                                            Icons.shopping_cart,
                                          ),
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
                    );

                    // );
                  },
                ),
              ),
            ],
          ),
        ),
        // ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            color: iconBacColor,
            // height: 60.0,
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 1),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.home,
                            color: iconColor,
                            size: 25,
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AllService(),
                              ),
                            );
                          },
                        ),
                        const Text(
                          'Home',
                          style: TextStyle(color: whitetextColor, fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.room_service,
                            color: iconColor,
                            size: 25,
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AllService(),
                              ),
                            );
                          },
                        ),
                        const Text(
                          'Services',
                          style: TextStyle(color: whitetextColor, fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.shopping_cart,
                            color: iconColor,
                            size: 25,
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AllService(),
                              ),
                            );
                          },
                        ),
                        const Text(
                          'Cart',
                          style: TextStyle(color: whitetextColor, fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.people,
                            color: iconColor,
                            size: 25,
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AllService(),
                              ),
                            );
                          },
                        ),
                        const Text(
                          'Account',
                          style: TextStyle(color: whitetextColor, fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.settings,
                            color: iconColor,
                            size: 25,
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AllService(),
                              ),
                            );
                          },
                        ),
                        const Text(
                          'Setting',
                          style: TextStyle(color: whitetextColor, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
