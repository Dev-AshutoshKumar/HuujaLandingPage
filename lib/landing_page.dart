import 'package:flutter/material.dart';
import 'package:hauja/custom_card.dart';
import 'package:hauja/generated/assets.dart';
import 'package:hauja/privacy_policy.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  Assets.assetsHeaderimage,
                  height: size.height,
                  width: size.width,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.1),
                    Colors.black,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.3,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              color: Colors.black.withOpacity(0.5),
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset(
                                          Assets.assetsLogo,
                                          height: 80,
                                          width: 80,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "Huuja",
                                        style:
                                            TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (_) => PrivacyPolicyPage()));
                                      },
                                      child: const Text(
                                        "Privacy Policy",
                                        style: TextStyle(fontSize: 16, color: Colors.grey),
                                      ))
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    Assets.assetsPlaystore,
                                    height: 70,
                                    width: 200,
                                    fit: BoxFit.fill,
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Image.asset(Assets.assetsAppstore, height: 70, width: 200, fit: BoxFit.fill),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * 0.7,
                      width: size.width,
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const SingleChildScrollView(
                        child: Column(
                          children: [
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              alignment: WrapAlignment.center,
                              runSpacing: 10,
                              spacing: 10,
                              children: [
                                CustomCard(
                                    title: "Streamline Check-ins",
                                    content:
                                        "Say goodbye to long queues and paperwork. With Huuja, you can effortlessly streamline the check-in process for your guests. Simply input their details and preferences into our intuitive interface, and let Huuja handle the rest.",
                                    icons: Icons.fact_check_outlined),
                                CustomCard(
                                    title: "Enhanced Security",
                                    content:
                                        "Rest easy knowing that your guests' data is secure with Huuja's advanced security features. We take data protection seriously and ensure that your guests' information is safeguarded at all times.",
                                    icons: Icons.security_rounded),
                                CustomCard(
                                    title: "Efficient Guest Management",
                                    content:
                                        "Keep track of all your guests' information in one centralized location. From contact details to room preferences, Huuja helps you stay organized and provides quick access to guest information whenever you need it.",
                                    icons: Icons.manage_accounts_rounded),
                                CustomCard(
                                    title: "Seamless Payment Processing",
                                    content:
                                        "Collect payments from your guests with ease using Huuja's integrated payment system. Whether it's room charges, additional services, or deposits, Huuja ensures secure and hassle-free transactions every time.",
                                    icons: Icons.payment_rounded),
                                CustomCard(
                                    title: "Personalized Service",
                                    content:
                                        "Delight your guests with personalized service tailored to their individual needs. With Huuja, you can easily record special requests, preferences, and feedback, allowing you to provide a memorable and enjoyable experience for every guest.",
                                    icons: Icons.miscellaneous_services),
                                CustomCard(
                                    title: "Real-time Updates",
                                    content:
                                        "Stay informed and up-to-date with real-time updates on room availability, bookings, and payments. Huuja's dashboard provides instant access to critical information, empowering you to make informed decisions and manage your hotel more effectively.",
                                    icons: Icons.restart_alt),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
