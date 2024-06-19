import 'package:flutter/material.dart';
import 'package:flutter_task/pages/screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/sohee4.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(color: Colors.black.withOpacity(0.7)),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Han So Hee',
                  style: TextStyle(
                    wordSpacing: 10,
                    letterSpacing: 10,
                    fontFamily: 'Nunito',
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: CircleAvatar(
                        radius: 85,
                        backgroundImage: AssetImage(
                          'assets/images/profilepict.jpg',
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'My',
                      style: TextStyle(
                        letterSpacing: 10,
                        fontFamily: 'Nunito',
                        color: Colors.white,
                        fontSize: 50,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    const Text(
                      'Beautiful Girl',
                      style: TextStyle(
                        letterSpacing: 11,
                        fontFamily: 'Nunito',
                        color: Colors.white,
                        fontSize: 50,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    const SizedBox(height: 50),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        minimumSize: Size(
                          MediaQuery.of(context).size.width,
                          60,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ScreenTwo(),
                          ),
                        );
                      },
                      child: const Text(
                        'Heaven',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
