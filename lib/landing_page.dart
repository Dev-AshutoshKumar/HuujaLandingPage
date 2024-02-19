import 'package:flutter/material.dart';

import 'package:hauja/custom_card.dart';
import 'package:hauja/generated/assets.dart';

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
                    Container(
                      height: size.height * 0.3,
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
                                      style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "Privacy Policy",
                                      style: TextStyle(fontSize: 16, color: Colors.grey),
                                    ))
                              ],
                            ),
                          )
                        ],
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
                      child: const Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        alignment: WrapAlignment.center,
                        runSpacing: 10,
                        spacing: 10,
                        children: [
                          CustomCard(
                              title: "GitHub Pages Jekyll Theme",
                              content:
                                  "Designed for GitHub Pages. Fork. Edit _config.yml. Upload screenshot/video. Push to gh-pages branch. Voilá!",
                              icons: Icons.account_balance),
                          CustomCard(
                              title: "GitHub Pages Jekyll Theme",
                              content:
                                  "Designed for GitHub Pages. Fork. Edit _config.yml. Upload screenshot/video. Push to gh-pages branch. Voilá!",
                              icons: Icons.home_filled),
                          CustomCard(
                              title: "GitHub Pages Jekyll Theme",
                              content:
                                  "Designed for GitHub Pages. Fork. Edit _config.yml. Upload screenshot/video. Push to gh-pages branch. Voilá!",
                              icons: Icons.money_off),
                          CustomCard(
                              title: "GitHub Pages Jekyll Theme",
                              content:
                                  "Designed for GitHub Pages. Fork. Edit _config.yml. Upload screenshot/video. Push to gh-pages branch. Voilá!",
                              icons: Icons.gite_rounded),
                          CustomCard(
                              title: "GitHub Pages Jekyll Theme",
                              content:
                                  "Designed for GitHub Pages. Fork. Edit _config.yml. Upload screenshot/video. Push to gh-pages branch. Voilá!",
                              icons: Icons.copy),
                        ],
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
