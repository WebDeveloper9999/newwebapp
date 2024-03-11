import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:last/globals/app_buttons.dart';
import 'package:last/globals/app_text.dart';
import 'package:last/globals/app_text_styles.dart';
import 'package:last/globals/constants.dart';
import 'package:last/helper%20class/helper_class.dart';
import 'package:last/widgets/profile_animation.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

import '../globals/app_assets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final socialButtons = <String>[
    AppAssets.facebook,
    AppAssets.twitter,
    AppAssets.linkedIn,
    AppAssets.insta,
    AppAssets.gmail,
  ];

  // ignore: prefer_typing_uninitialized_variables
  var socialBI;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        children: [
          buildHomePersonalInfo(size),
          Constants.sizedBox(height: 25.0),
          const ProfileAnimation()
        ],
      ),
      tablet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: buildHomePersonalInfo(size)),
          const ProfileAnimation(),
        ],
      ),
      desktop: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: buildHomePersonalInfo(size)),
          const ProfileAnimation(),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: Colors.transparent,
    );
  }

  SizedBox buildHomePersonalInfo(Size size) {
    return SizedBox(
      height: 650,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          FadeInDown(
            duration: const Duration(milliseconds: 1200),
            child: Text(
              'Hello, It\'s Me',
              style: AppTextStyles.montserratStyle(color: Colors.white),
            ),
          ),
          Constants.sizedBox(height: 15.0),
          FadeInRight(
            duration: const Duration(milliseconds: 1400),
            child: Text(
              AppText.name,
              style: AppTextStyles.headingStyles(),
            ),
          ),
          Constants.sizedBox(height: 15.0),
          FadeInLeft(
            duration: const Duration(milliseconds: 1400),
            child: Row(
              children: [
                Text(
                  'And I\'m a ',
                  style: AppTextStyles.montserratStyle(color: Colors.white),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText(
                      AppText.profession,
                      textStyle: AppTextStyles.montserratStyle(
                          color: Colors.lightBlue),
                    ),
                  ],
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                )
              ],
            ),
          ),
          Constants.sizedBox(height: 15.0),
          FadeInDown(
            duration: const Duration(milliseconds: 1600),
            child: Text(
              AppText.subtitle,
              style: AppTextStyles.normalStyle(),
              textAlign: TextAlign.start,
            ),
          ),
          //   Constants.sizedBox(height: 22.0),
          //   FadeInUp(
          //     duration: const Duration(milliseconds: 1600),
          //     child: SizedBox(
          //         height: 48,
          //         child: Row(
          //           children: [
          //             ClipRRect(
          //                 borderRadius: BorderRadius.circular(15),
          //                 child: InkWell(
          //                     onTap: () async {
          //                       Uri uri = Uri.parse(AppText.email);
          //                       if (!await launcher.launchUrl(uri)) {
          //                         return debugPrint('Could Not Launch Email');
          //                       }
          //                     },
          //                     child: Image.asset(AppAssets.gmail))),
          //             Constants.sizedBox(width: 30),
          //             InkWell(
          //                 onTap: () {
          //                   launcher.launchUrl(Uri.parse(AppText.linkedInUrl),
          //                       mode: launcher.LaunchMode.externalApplication);
          //                 },
          //                 child: Image.asset(AppAssets.linkedIn)),
          //             Constants.sizedBox(width: 30),
          //             InkWell(
          //                 onTap: () async {
          //                   Uri uri = Uri.parse(AppText.phoneNumber);
          //                   if (!await launcher.launchUrl(uri)) {
          //                     return debugPrint('Error');
          //                   }
          //                 },
          //                 child: const Icon(
          //                   Icons.phone,
          //                   size: 50,
          //                 )),
          //           ],
          //         )),
          //   ),
          //   Constants.sizedBox(height: 18.0),
          //   FadeInUp(
          //     duration: const Duration(milliseconds: 1800),
          Constants.sizedBox(height: 20),
          AppButtons.buildMaterialButton(
              onTap: () {
                launcher.launchUrl(Uri.parse(AppText.resumeUrl),
                    mode: launcher.LaunchMode.externalApplication);
              },
              buttonName: 'Show Resume'),
          // );
          //
        ],
      ),
    );
  }
}
