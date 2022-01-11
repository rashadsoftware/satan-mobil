import 'package:flutter/material.dart';

class BannerItem extends StatefulWidget {
  const BannerItem(
      {Key? key,
      required this.category,
      required this.image,
      required this.numBrands})
      : super(key: key);

  final String category, image;
  final int numBrands;

  @override
  State<BannerItem> createState() => _BannerItemState();
}

class _BannerItemState extends State<BannerItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        width: 242,
        height: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                widget.image,
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text.rich(
                  TextSpan(
                    style: const TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: "${widget.category}\n",
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: "${widget.numBrands} brands")
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
