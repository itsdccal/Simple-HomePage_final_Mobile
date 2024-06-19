import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  List<CusImages> listImages = [
    CusImages(image: 'assets/images/sohee1.jpg'),
    CusImages(image: 'assets/images/sohee2.jpg'),
    CusImages(image: 'assets/images/sohee3.jpg'),
    CusImages(image: 'assets/images/sohee4.jpg'),
    CusImages(image: 'assets/images/sohee5.jpg'),
    CusImages(image: 'assets/images/sohee6.jpg'),
    CusImages(image: 'assets/images/sohee7.jpg'),
    CusImages(image: 'assets/images/sohee8.jpg'),
    CusImages(image: 'assets/images/sohee9.jpg'),
    CusImages(image: 'assets/images/sohee10.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Hi, Han so hee",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Nunito',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/images/profilepict.jpg",
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "My gallery",
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 350,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listImages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Stack(
                      children: [
                        Container(
                          height: 500,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              listImages[index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          right: 20,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  listImages[index].value =
                                      !listImages[index].value;
                                });
                              },
                              icon: listImages[index].value
                                  ? const Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    )
                                  : const Icon(Icons.favorite_border),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CusImages {
  final String image;
  bool value;

  CusImages({
    required this.image,
    this.value = false,
  });
}
