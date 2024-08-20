import 'package:flutter/material.dart';
import 'package:hotel_app/utilities/cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Color(0xff121A27);
    const cardBackGroundColor = Color(0xff262D3D);
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
                child: Row(
                  children: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: cardBackGroundColor,
                        border: Border.all(style: BorderStyle.none),
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    const Text(
                      'Popular Hotel',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const MyCard(
                image: 'lib/hotels/newHotel.png',
                hotelName: 'The Plaza Hotel \nNew York City',
              ),
              const SizedBox(
                height: 20,
              ),
              const MyCard(
                image: 'lib/hotels/hotel2.png',
                hotelName: 'Richmond Hotel',
              ),
              const SizedBox(
                height: 20,
              ),
              const MyCard(
                image: 'lib/hotels/hotel3.png',
                hotelName: 'Nagar Valley Hotel \nLtd.',
              ),
              const SizedBox(
                height: 20,
              ),
              const MyCard(
                image: 'lib/hotels/hotel4.png',
                hotelName: 'Four Seasons Hotel \nGeorge V, Paris',
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
