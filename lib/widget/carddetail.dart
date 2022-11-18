import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardDetail extends StatelessWidget {
  const CardDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.arrow_back_ios_new,
                    size: 30,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your cart is ready to go",
                        style: GoogleFonts.heebo(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "4 Menu",
                        style: GoogleFonts.heebo(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                    color: Colors.amber, borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "See All",
                          style: GoogleFonts.heebo(),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 22,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "images/rectangle.png",
                          height: 65,
                          width: 55,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                        Text(
                          "242nd St Tonganoxie, Kansas \n (KS), 66086",
                          style: GoogleFonts.heebo(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your Order",
                    style: GoogleFonts.heebo(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "+",
                    style: GoogleFonts.heebo(
                        fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "1x",
                        style: GoogleFonts.heebo(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Image.asset(
                        "images/rectangle.png",
                        height: 65,
                        width: 55,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Special Ice Cream \nYellow",
                            style: GoogleFonts.heebo(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Edit",
                            style: GoogleFonts.heebo(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Text(
                        "\$ 5,99",
                        style: GoogleFonts.heebo(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "2x",
                        style: GoogleFonts.heebo(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Image.asset(
                        "images/cake.png",
                        height: 65,
                        width: 55,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Blue Ice Cream",
                            style: GoogleFonts.heebo(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Edit",
                            style: GoogleFonts.heebo(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Text(
                        "\$ 8,99",
                        style: GoogleFonts.heebo(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "1x",
                        style: GoogleFonts.heebo(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Image.asset(
                        "images/a.png",
                        height: 65,
                        width: 55,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Special Ice Cream \nYellow",
                            style: GoogleFonts.heebo(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Edit",
                            style: GoogleFonts.heebo(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(22),
                                child: Text(
                                  "-",
                                  style: GoogleFonts.heebo(fontSize: 20),
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.cyan),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.01,
                              ),
                              Text(
                                "2",
                                style: GoogleFonts.heebo(fontSize: 18),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.01,
                              ),
                              Container(
                                padding: EdgeInsets.all(18),
                                child: Text(
                                  "+",
                                  style: GoogleFonts.heebo(fontSize: 18),
                                ),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.cyan),
                              ),
                            ],
                          )
                        ],
                      ),
                      Text(
                        "\$ 3,99",
                        style: GoogleFonts.heebo(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "",
                    style: GoogleFonts.heebo(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Delivery Fee \$ 4,00",
                    style: GoogleFonts.heebo(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Cost",
                    style: GoogleFonts.heebo(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "\$ 36,99",
                    style: GoogleFonts.heebo(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
