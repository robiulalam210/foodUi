import 'package:flutter/material.dart';
import 'package:foodapp2_icream/model/modelhorizantel.dart';
import 'package:foodapp2_icream/model/modelvertical.dart';
import 'package:foodapp2_icream/widget/detail_prodact.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeApp extends StatefulWidget {
  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  final modelHorizantel = ModelHorizantel.list();
  final modelVertical = ModelVertical.listVertical();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 15, left: 8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "What do you want to \n"
                  " eat today?",
                  style: GoogleFonts.heebo(
                      fontSize: 22, fontWeight: FontWeight.w700),
                ),
                Image.asset(
                  "images/search.png",
                  width: MediaQuery.of(context).size.width * 0.08,
                  height: MediaQuery.of(context).size.height * 0.04,
                  fit: BoxFit.cover,
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                    // color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Image.asset(
                                "${modelHorizantel[index].images}",
                                height: 140,
                                width: 140,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.01,
                              ),
                              Text(
                                "${modelHorizantel[index].titel}",
                                style: GoogleFonts.heebo(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                    separatorBuilder: (_, index) => SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                    itemCount: modelHorizantel.length)),
            ListTile(
              contentPadding: EdgeInsets.all(4),
              title: Text(
                "Popular",
                style: GoogleFonts.heebo(
                    fontSize: 16, fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                "Let’s choose, and enjoy the food",
                style: GoogleFonts.heebo(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              leading: Image.asset(
                "images/love.png",
                width: 45,
                height: 45,
                fit: BoxFit.cover,
              ),
              trailing: Icon(
                Icons.arrow_forward,
                color: Colors.black,
                size: 45,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Expanded(
              child: ListView.separated(
                  // physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  DetailProdact(modelVertical[index])));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(22)),
                          width: double.infinity,
                          height: 170,
                          // height: MediaQuery.of(context).size.height * 0.3,
                          child: Card(
                            elevation: 5,
                            child: Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "${modelVertical[index].images}",
                                    height: 120,
                                    width: 130,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.03,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${modelVertical[index].titel}",
                                        style: GoogleFonts.heebo(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color:
                                                Colors.green.withOpacity(0.4)),
                                        child: Text(
                                          "${modelVertical[index].catagory}",
                                          style: GoogleFonts.heebo(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black),
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.03,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.red,
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.01,
                                          ),
                                          Text(
                                            "${modelVertical[index].location}",
                                            style: GoogleFonts.heebo(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.1,
                                          ),
                                          Text(
                                            "${modelVertical[index].price}",
                                            style: GoogleFonts.heebo(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w800,
                                                color: Colors.black),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                  separatorBuilder: (_, index) => SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                  itemCount: modelVertical.length),
            ),
          ],
        ),
      ),
    ));
  }
}
