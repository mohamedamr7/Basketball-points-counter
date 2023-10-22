import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreeen extends StatefulWidget{
  @override
  State<HomeScreeen> createState() => _HomeScreeenState();
}
     int pointA=0;
     int pointB=0;
class _HomeScreeenState extends State<HomeScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFF9700),
        title: Text("Points Counter",
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 30),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Team A",
                        style: TextStyle(
                          fontSize: 40,
                        ),
                        ),

                        Padding(
                          padding: pointA>=10?  EdgeInsets.only(top: 53.0,bottom: 53,):EdgeInsets.only(top: 0.0,bottom: 0.0),
                          child: Text("${pointA}",
                            style: TextStyle(
                              fontSize: pointA<10? 190:100,
                            ),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              pointA++;
                            });
                          },
                          child: Container(
                            width: 110,
                            height: 35,
                            color: Color(0xffFF9700),
                            child: Center(child: Text("Add 1 Point",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            )),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              pointA=pointA+2;
                            });

                          },
                          child: Container(
                            width: 110,
                            height: 35,
                            color: Color(0xffFF9700),
                            child: Center(child: Text("Add 2 Point",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              pointA=pointA+3;
                            });
                          },
                          child: Container(
                            width: 110,
                            height: 35,
                            color: Color(0xffFF9700),
                            child: Center(child: Text("Add 3 Point",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 3,
                    height: 400,
                    color: Colors.black12,
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Team B",
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                        Padding(
                          padding: pointB>=10? const EdgeInsets.only(top: 53.0,bottom: 53,):EdgeInsets.only(top: 0.0,bottom: 0.0),
                          child: Text("${pointB}",
                            style: TextStyle(
                              fontSize: pointB<10? 190:100,


                            ),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              pointB=pointB+1;
                            });
                          },
                          child: Container(
                            width: 110,
                            height: 35,
                            color: Color(0xffFF9700),
                            child: Center(child: Text("Add 1 Point",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              pointB=pointB+2;
                            });
                          },
                          child: Container(
                            width: 110,
                            height: 35,
                            color: Color(0xffFF9700),
                            child: Center(child: Text("Add 2 Point",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            setState(() {
                              pointB=pointB+3;
                            });
                          },
                          child: Container(
                            width: 110,
                            height: 35,
                            color: Color(0xffFF9700),
                            child: Center(child: Text("Add 3 Point",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    pointA=0;
                    pointB=0;
                  });
                },
                child: Container(
                  width: 200,
                  height: 35,
                  color: Color(0xffFF9700),
                  child: Center(child: Text("Reset",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}