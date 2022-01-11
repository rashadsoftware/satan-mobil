import 'package:elanlar/component/banner_item.dart';
import 'package:elanlar/component/category_item.dart';
import 'package:elanlar/component/section_title.dart';
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
                children: const [
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                  CategoryItem(),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  BannerItem(
                    category: "New Brands",
                    image: "assets/images/banner_1.png",
                    numBrands: 182,
                  ),
                  BannerItem(
                    category: "Seconds Brands",
                    image: "assets/images/banner_1.png",
                    numBrands: 15,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SectionTitle(text: "VIP elanlar", press: () {})
          ],
        ),
      ),
    );
  }
}
