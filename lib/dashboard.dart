import 'package:appsinvo/homepage.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({
    Key? key,
    this.title,
  }) : super(key: key);
  final String? title;

  @override
  State<StatefulWidget> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedPos = 2;

  double leftMargin = 0.4;
  double righttMargin = 0.4;

  List<Widget> tabs = [
    const Center(child: Text("My Bookings")),
    const Center(child: Text("My Scan")),
    const HomePage(),
    const Center(child: Text("My QR")),
    const Center(child: Text("My Profile")),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      right: false,
      left: false,
      child: Scaffold(
        body: tabs[selectedPos],
        floatingActionButton: SizedBox(
          height: 64,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                height: 64,
                width: (MediaQuery.of(context).size.width * leftMargin),
                duration: const Duration(seconds: 1),
              ),
              SizedBox(
                width: (MediaQuery.of(context).size.width * 0.2),
                child: CircleAvatar(
                  radius: 32,
                  backgroundColor: const Color(0xff0099FE),
                  child: Image.asset(
                    selectedPos == 0
                        ? 'assets/booking.png'
                        : selectedPos == 1
                            ? 'assets/scan.png'
                            : selectedPos == 2
                                ? 'assets/home.png'
                                : selectedPos == 3
                                    ? 'assets/qr.png'
                                    : 'assets/profile.png',
                    height: selectedPos != 2 ? 25 : null,
                    color: selectedPos != 2 ? Colors.white : null,
                  ),
                ),
              ),
              AnimatedContainer(
                height: 64,
                width: (MediaQuery.of(context).size.width * righttMargin),
                duration: const Duration(seconds: 1),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          height: 60,
          decoration: const BoxDecoration(color: Colors.white),
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedPos = 0;
                      leftMargin = 0;
                      righttMargin = 0.8;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      selectedPos == 0
                          ? const SizedBox(height: 25)
                          : Image.asset(
                              'assets/booking.png',
                              height: 25,
                            ),
                      Text(
                        "My Bookings",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: selectedPos == 0
                              ? const Color(0xff0099FE)
                              : const Color(0xff999999),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedPos = 1;
                      leftMargin = 0.2;
                      righttMargin = 0.6;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      selectedPos == 1
                          ? const SizedBox(height: 25)
                          : Image.asset(
                              'assets/scan.png',
                              height: 25,
                            ),
                      Text(
                        "Scan QR",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: selectedPos == 1
                              ? const Color(0xff0099FE)
                              : const Color(0xff999999),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedPos = 2;
                      leftMargin = 0.4;
                      righttMargin = 0.4;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      selectedPos == 2
                          ? const SizedBox(height: 25)
                          : Image.asset(
                              'assets/home.png',
                              height: 25,
                            ),
                      Text(
                        "Home",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: selectedPos == 2
                              ? const Color(0xff0099FE)
                              : const Color(0xff999999),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedPos = 3;
                      leftMargin = 0.6;
                      righttMargin = 0.2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      selectedPos == 3
                          ? const SizedBox(height: 25)
                          : Image.asset(
                              'assets/qr.png',
                              height: 25,
                            ),
                      Text(
                        "My QR",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: selectedPos == 3
                              ? const Color(0xff0099FE)
                              : const Color(0xff999999),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectedPos = 4;
                      leftMargin = 0.8;
                      righttMargin = 0.0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      selectedPos == 4
                          ? const SizedBox(height: 25)
                          : Image.asset(
                              'assets/profile.png',
                              height: 25,
                            ),
                      Text(
                        "Profile",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: selectedPos == 4
                              ? const Color(0xff0099FE)
                              : const Color(0xff999999),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
