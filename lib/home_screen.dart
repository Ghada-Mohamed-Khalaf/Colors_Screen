import 'package:color_screen/color_screen.dart';
import 'package:color_screen/component.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,

                      colors: [
                        Colors.black.withOpacity(.7),
                        Colors.black.withOpacity(.2)
                      ])


              ),


              child: Text("color screen", style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold,


              ),)),
        )),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: GridView.count(
          physics:BouncingScrollPhysics(
          ) ,
          crossAxisCount: 4, children: colorslist.map((colorItem) =>
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ColorScreen( screenColor: colorItem,);
                }));
              },
              child: Container(


                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: colorItem,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(2, 3),
                      blurRadius: 2,
                    ),
                  ],


                ),

              ),
            )).toList(),

        ),
      ),
    );
  }
}
