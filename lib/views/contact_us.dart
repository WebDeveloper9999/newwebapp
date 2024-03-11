import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:last/globals/app_text.dart';
import 'package:last/helper%20class/helper_class.dart';
import '../globals/app_colors.dart';
import '../globals/app_text_styles.dart';
import '../globals/constants.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);

  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);
  bool hover1 = false,
      hover2 = false,
      hover3 = false,
      hover4 = false,
      hover5 = false,
      hover6 = false,
      hover7 = false,
      hover8 = false,
      hover9 = false,
      hover10 = false,
      hover11 = false,
      hover12 = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          buildContactText(),
          Constants.sizedBox(height: 40.0),
          InkWell(
              onTap: () {},
              onHover: (value) {
                setState(() {
                  hover1 = value;
                });
              },
              child:
                  buildAnimatedContainer(title: AppText.skill1, hover: hover1)),
          Constants.sizedBox(height: 5),
          InkWell(
              onTap: () {},
              onHover: (value) {
                setState(() {
                  hover2 = value;
                });
              },
              child:
                  buildAnimatedContainer(title: AppText.skill2, hover: hover2)),
          Constants.sizedBox(height: 5),
          InkWell(
              onTap: () {},
              onHover: (value) {
                setState(() {
                  hover3 = value;
                });
              },
              child:
                  buildAnimatedContainer(title: AppText.skill3, hover: hover3)),
          Constants.sizedBox(height: 5),
          InkWell(
              onTap: () {},
              onHover: (value) {
                setState(() {
                  hover4 = value;
                });
              },
              child:
                  buildAnimatedContainer(title: AppText.skill4, hover: hover4)),
          Constants.sizedBox(height: 5),
          InkWell(
              onTap: () {},
              onHover: (value) {
                setState(() {
                  hover5 = value;
                });
              },
              child:
                  buildAnimatedContainer(title: AppText.skill5, hover: hover5)),
          Constants.sizedBox(height: 5),
          InkWell(
              onTap: () {},
              onHover: (value) {
                setState(() {
                  hover6 = value;
                });
              },
              child:
                  buildAnimatedContainer(title: AppText.skill6, hover: hover6)),
        ],
      ),
      tablet: buildFormTablet(),
      desktop: buildFormDesktop(),
      paddingWidth: size.width * 0.2,
      bgColor: AppColors.bgColor,
    );
  }

  Column buildFormDesktop() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        buildContactText(),
        Constants.sizedBox(height: 40.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    hover1 = value;
                  });
                },
                child: buildAnimatedContainer(
                    title: AppText.skill1, hover: hover1)),
            Constants.sizedBox(width: 5),
            InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    hover2 = value;
                  });
                },
                child: buildAnimatedContainer(
                    title: AppText.skill2, hover: hover2)),
            Constants.sizedBox(width: 5),
            InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    hover3 = value;
                  });
                },
                child: buildAnimatedContainer(
                    title: AppText.skill3, hover: hover3)),
          ],
        ),
        Constants.sizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    hover4 = value;
                  });
                },
                child: buildAnimatedContainer(
                    title: AppText.skill4, hover: hover4)),
            Constants.sizedBox(width: 5),
            InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    hover5 = value;
                  });
                },
                child: buildAnimatedContainer(
                    title: AppText.skill5, hover: hover5)),
            Constants.sizedBox(width: 5),
            InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    hover6 = value;
                  });
                },
                child: buildAnimatedContainer(
                    title: AppText.skill6, hover: hover6)),
          ],
        ),
        Constants.sizedBox(height: 10),
      ],
    );
  }

  Column buildFormTablet() {
    return Column(
      children: [
        buildContactText(),
        Constants.sizedBox(height: 40.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        hover4 = value;
                      });
                    },
                    child: buildAnimatedContainer(
                        title: AppText.skill4, hover: hover4)),
                Constants.sizedBox(height: 5),
                InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        hover5 = value;
                      });
                    },
                    child: buildAnimatedContainer(
                        title: AppText.skill5, hover: hover5)),
                Constants.sizedBox(height: 5),
                InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        hover6 = value;
                      });
                    },
                    child: buildAnimatedContainer(
                        title: AppText.skill6, hover: hover6)),
                Constants.sizedBox(height: 10),
              ],
            ),
            Column(
              children: [
                InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        hover1 = value;
                      });
                    },
                    child: buildAnimatedContainer(
                        title: AppText.skill1, hover: hover1)),
                Constants.sizedBox(height: 5),
                InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        hover2 = value;
                      });
                    },
                    child: buildAnimatedContainer(
                        title: AppText.skill2, hover: hover2)),
                Constants.sizedBox(height: 5),
                InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        hover3 = value;
                      });
                    },
                    child: buildAnimatedContainer(
                        title: AppText.skill3, hover: hover3)),
                Constants.sizedBox(height: 10),
              ],
            ),
          ],
        ),
      ],
    );
  }

  FadeInDown buildContactText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: AppText.my,
          style: AppTextStyles.headingStyles(fontSize: 30.0),
          children: [
            TextSpan(
              text: AppText.skills,
              style: AppTextStyles.headingStyles(
                  fontSize: 30, color: AppColors.robinEdgeBlue),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer({
    required String title,
    required bool hover,
    double width = 200,
    double hoverWidth = 210,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: hover ? hoverWidth : width,
      height: hover ? 80 : 90,
      alignment: Alignment.center,
      transform: hover ? onHoverActive : onHoverRemove,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      decoration: BoxDecoration(
        color: AppColors.bgColor2,
        borderRadius: BorderRadius.circular(30),
        border:
            hover ? Border.all(color: AppColors.themeColor, width: 3) : null,
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 4.0,
            blurRadius: 4.5,
            offset: Offset(3.0, 4.5),
          )
        ],
      ),
      child: Text(
        title,
        style:
            AppTextStyles.montserratStyle(color: Colors.black, fontSize: 14.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}
