import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.80,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(255, 255, 255, 0.9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      onChanged: (value) {
                        // search value
                      },
                      decoration: const InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Axtar...",
                          prefixIcon: Icon(Icons.search),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15)),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(50),
                    child: Stack(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 0.9),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.sort,
                            color: Colors.blue,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: Container(
                            height: 16,
                            width: 16,
                            decoration: BoxDecoration(
                                color: const Color(0xffff4848),
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 1.5, color: Colors.white)),
                            child: const Center(
                              child: Text(
                                "3",
                                style: TextStyle(
                                    fontSize: 10,
                                    height: 1,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                      width: 242,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          children: [
                            Image.asset(
                              "images/banner_1.png",
                              fit: BoxFit.cover,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      const Color(0xff343434).withOpacity(0.4),
                                      const Color(0xff343434).withOpacity(0.15)
                                    ]),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              child: Text.rich(
                                TextSpan(
                                  style: TextStyle(color: Colors.white),
                                  children: [
                                    TextSpan(
                                      text: "New brand \n",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: "182 brands")
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                      width: 242,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          children: [
                            Image.asset(
                              "images/banner_1.png",
                              fit: BoxFit.cover,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      const Color(0xff343434).withOpacity(0.4),
                                      const Color(0xff343434).withOpacity(0.15)
                                    ]),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              child: Text.rich(
                                TextSpan(
                                  style: TextStyle(color: Colors.white),
                                  children: [
                                    TextSpan(
                                      text: "New brand \n",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: "182 brands")
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
