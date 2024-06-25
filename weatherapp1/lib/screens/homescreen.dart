import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark
        ), 
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 1.2*kToolbarHeight, 40, 20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Align(
                alignment:const AlignmentDirectional(5,-0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 117, 52, 229)
                  ),
                ),
              ),
              Align(
                alignment:const AlignmentDirectional(-5,-0.3),
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color:  Color.fromARGB(255, 117, 52, 229)
                  ),
                ),
              ),
              Align(
                alignment:const AlignmentDirectional(0,-1.2),
                child: Container(
                  height: 300,
                  width: 650,
                  decoration:const BoxDecoration(
                    color: Color.fromARGB(255, 233, 150, 49)

                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100.0,sigmaY: 100.0),
                child: Container(
                  decoration: const BoxDecoration(color: Colors.transparent),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.location_pin, color: Colors.red),
                        SizedBox(width: 5),
                        Text( 
                          'Siliguri-WB',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 7),
                    const Text(
                      'Good Morning',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Image.asset(
                      'Images/1.png'
                    ),
                    const Center(
                      child: Text(
                        '21°C',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.w600
                        ),  
                      ),
                    ),
                    const Center(
                      child: Text(
                        'THUNDERSTORM',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                        ),  
                      ),  
                    ),
                    const SizedBox(height: 5),
                    const Center(
                      child: Text(
                        'Tuesday 25 - 01:48 pm',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w300
                        ),  
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'Images/11.png',
                              scale: 8,
                            ),
                            const SizedBox(width: 5),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sunrise',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  '5:34 am',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'Images/12.png',
                              scale: 8,
                            ),
                            const SizedBox(width: 5),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sunset',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  '7:18 pm',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Divider(
                        color: Colors.grey,
                        thickness: 0.5,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'Images/13.png',
                              scale: 8,
                            ),
                            const SizedBox(width: 5),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Temp Max',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  '23°C',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'Images/14.png',
                              scale: 8,
                            ),
                            const SizedBox(width: 5),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Temp Min',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  '16°C',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ) ,
        ),
     ),
    );
  }
}
