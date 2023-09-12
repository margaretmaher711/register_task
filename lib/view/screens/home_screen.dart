import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/get_current_location.dart';
import '../Widgets/custom_button.dart';

class HomeScreen extends StatefulWidget {
  String userName;

  HomeScreen({Key? key, required this.userName}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  "assets/images/mars-plex-knH05eGDEwc-unsplash.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Welcome, ',
                                style: TextStyle(
                                    fontFamily: "Poppins-Bold",
                                    fontSize: 25,
                                    letterSpacing: .6,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: '${widget.userName} .',
                                style: const TextStyle(
                                    color: Colors.blue,
                                    overflow: TextOverflow.fade,
                                    fontFamily: "Poppins-Bold",
                                    fontSize: 17,
                                    letterSpacing: 1.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile_placeholder.png'),
                      )
                    ],
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(),
                  ),
                  GetBuilder<Controller>(builder: (_) {
                    return (controller.currentPosition?.latitude != null &&
                            controller.currentPosition?.longitude != null &&
                            controller.currentAddress != null)
                        ? Column(
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    const TextSpan(
                                      text: 'Latitude: ',
                                      style: TextStyle(
                                          fontFamily: "Poppins-Bold",
                                          fontSize: 17,
                                          color: Colors.white,
                                          letterSpacing: .6,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          '${controller.currentPosition?.latitude}',
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Poppins-Medium",
                                          fontSize: 14,
                                          letterSpacing: 1.0),
                                    ),
                                  ],
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    const TextSpan(
                                      text: 'Longitude: ',
                                      style: TextStyle(
                                          fontFamily: "Poppins-Bold",
                                          fontSize: 17,
                                          color: Colors.white,
                                          letterSpacing: .6,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text:
                                          '${controller.currentPosition?.longitude}',
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Poppins-Medium",
                                          fontSize: 14,
                                          letterSpacing: 1.0),
                                    ),
                                  ],
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    const TextSpan(
                                      text: 'Current Address: ',
                                      style: TextStyle(
                                          fontFamily: "Poppins-Bold",
                                          fontSize: 17,
                                          color: Colors.white,
                                          letterSpacing: .6,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: controller.currentAddress,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Poppins-Medium",
                                          fontSize: 14,
                                          letterSpacing: 1.0),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        : Container();
                  }),
                  Expanded(
                    child: Container(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: InkWell(
                        onTap: controller.getCurrentPosition,
                        child: CustomButton(
                          txt: "Get Current Location",
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
