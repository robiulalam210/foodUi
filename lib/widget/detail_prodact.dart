import 'package:flutter/material.dart';
import 'package:foodapp2_icream/model/modelvertical.dart';
import 'package:foodapp2_icream/widget/carddetail.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailProdact extends StatelessWidget {
  ModelVertical modelVertical;

  DetailProdact(this.modelVertical);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios_new,
                    size: 30,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Angkringan Resto",
                        style: GoogleFonts.heebo(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Go to restaurant",
                        style: GoogleFonts.heebo(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Icon(
                    Icons.add_shopping_cart,
                    size: 30,
                  ),
                  // Image.asset("images/love.png",),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  // width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.6,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(22)),
                  //margin: EdgeInsets.all(12),
                  child: Image.asset(
                    "${modelVertical.images}",
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "${modelVertical.titel}",
                    style: GoogleFonts.heebo(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                  Image.asset("images/ster.png"),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                "Tk ${modelVertical.price}",
                style: GoogleFonts.heebo(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.green),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                "Nibh faucibus pellentesque ac viverra maecenas ultricies in nisl, faucibus pellentesque ac viverra ecenas ultricies in nisl",
                style: GoogleFonts.heebo(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              TextField(
                style: TextStyle(color: Colors.white),
                cursorRadius: Radius.circular(22),
                cursorColor: Color(0xff8A8A8E),
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(10),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.blue)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Color(0xff8A8A8E))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    hintText: "  leave a note for the restaurant",
                    hintStyle: TextStyle(color: Color(0xff8A8A8E))),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(22),
                      child: Text(
                        "-",
                        style: GoogleFonts.heebo(fontSize: 22),
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.cyan),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Text(
                    "2",
                    style: GoogleFonts.heebo(fontSize: 22),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "+",
                        style: GoogleFonts.heebo(fontSize: 22),
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.cyan),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CardDetail()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                        child: Text(
                          "Continue",
                          style: GoogleFonts.heebo(
                              fontSize: 20, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
