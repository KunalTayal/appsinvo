import 'package:flutter/material.dart';

import 'constants/app_constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5FBFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 120,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 16),
            SizedBox(
              width: 18,
              child: Image.asset(
                "assets/location.png",
                fit: BoxFit.fill,
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 10, left: 4),
                child: Text(
                  "NY 11434, USA",
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.blue,
                  ),
                ),
              ),
            )
          ],
        ),
        title: SizedBox(
          height: 40,
          child: Image.asset("assets/logo.png", fit: BoxFit.cover),
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {},
            child: Image.asset(
              'assets/search.png',
              height: 20,
            ),
          ),
          const SizedBox(width: 10),
          InkWell(
            onTap: () {},
            child: Image.asset(
              'assets/notification.png',
              height: 20,
            ),
          ),
          const SizedBox(width: 16)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Image.asset(
                "assets/offer.png",
                fit: BoxFit.cover,
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.grey,
                  child: CircleAvatar(
                    radius: 3,
                    backgroundColor: Color(0xffF5FBFF),
                  ),
                ),
                SizedBox(width: 4),
                CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.blue,
                ),
                SizedBox(width: 4),
                CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.blue,
                  child: CircleAvatar(
                    radius: 3,
                    backgroundColor: Color(0xffF5FBFF),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            GridView.builder(
              shrinkWrap: true,
              itemCount: image.length,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 55,
                        height: 55,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            image[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        title[index],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              decoration: BoxDecoration(
                color: const Color(0xffDAEDFB),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.close,
                        color: Colors.transparent,
                      ),
                      const Expanded(
                        child: Center(
                          child: Text(
                            "Stay Safe",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff0099FE),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.close,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 22),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              width: 55,
                              height: 55,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "assets/mask.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 110,
                              child: Center(
                                child: Text(
                                  "Always wear a mask",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff3E3E3E),
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              width: 55,
                              height: 55,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "assets/wash_hand.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 110,
                              child: Text(
                                "Wash hand",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xff3E3E3E),
                                  fontSize: 14,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              width: 55,
                              height: 55,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "assets/distance.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 110,
                              child: Center(
                                child: Text(
                                  "Keep distance with other person",
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xff3E3E3E),
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80)
          ],
        ),
      ),
      // bottomNavigationBar: Container(),
    );
  }
}
