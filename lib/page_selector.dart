// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_constructors

import 'package:bohatty_cooperative_agent/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bohatty_cooperative_agent/bottom_nav.dart';

class SimplePageSelector extends StatefulWidget {
  const SimplePageSelector({Key? Key}) : super(key: Key);
  _SimplePageSelectorState createState() => _SimplePageSelectorState();
}

class _SimplePageSelectorState extends State<SimplePageSelector> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: DefaultTabController(
            length: 4,
            child: Builder(
              builder: (BuildContext context) => Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        child: TabBarView(
                          children: <Widget>[
                            Container(
                              child: Center(
                                child: Column(children: [
                                  Image.asset(
                                      "assets/images/secure_saveings.png",
                                      width: double.infinity,
                                      height: 380.8),
                                  SizedBox(height: 40),
                                  Text("Smart and Secured Savings",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.mulish(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800)),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text(
                                        "We guarantee 100% security of your funds",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.mulish(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  SizedBox(height: 60),
                                  TabPageSelector(
                                    indicatorSize: 10,
                                    selectedColor: green,
                                  ),
                                ]),
                              ),
                            ),
                            Column(children: [
                              Image.asset("assets/images/loan.png",
                                  width: 380.8, height: 380.8),
                              SizedBox(height: 40),
                              Text("Quick and Affordable Loans",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.mulish(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800)),
                              SizedBox(height: 10),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    "Save regularly to access affordable loans.",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.mulish(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400)),
                              ),
                              SizedBox(height: 60),
                              TabPageSelector(
                                indicatorSize: 10,
                                selectedColor: green,
                              ),
                            ]),
                            Column(children: [
                              Image.asset("assets/images/agent.png",
                                  width: double.infinity, height: 380.8),
                              SizedBox(height: 40),
                              Text("Bohatty Cooperative Agents",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.mulish(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800)),
                              SizedBox(height: 10),
                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                    "Save regularly with our agents in your neighbourhood.",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.mulish(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400)),
                              ),
                              SizedBox(height: 60),
                              TabPageSelector(
                                indicatorSize: 10,
                                selectedColor: green,
                              ),
                            ]),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/digital.png",
                                      width: double.infinity, height: 380.8),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Text("Digital Financial Services",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.mulish(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800)),
                                  SizedBox(height: 10),
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                        "Buy Airtime / Data, Pay Bills, Transfer Money, etc",
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.mulish(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  SizedBox(height: 40),
                                  Flexible(
                                    child: TabPageSelector(
                                      indicatorSize: 10,
                                      selectedColor: green,
                                    ),
                                  ),
                                  Expanded(
                                      child: SizedBox(
                                    height: 1,
                                  )),
                                  InkWell(
                                      child: Container(
                                          width: double.infinity,
                                          height: 60,
                                          decoration:
                                              BoxDecoration(color: orange),
                                          child: Center(
                                            child: Text("Get started",
                                                style: GoogleFonts.mulish(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w700)),
                                          )),
                                      onTap: () {
                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    WebIndexPage()),
                                            (route) => false);
                                      }),
                                ]),
                          ],
                        ),
                      ),
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
//Padding(padding: EdgeInsets.all(8), child: ,),