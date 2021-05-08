import 'package:fl_widgets/common/lego_factory.dart';
import 'package:fl_widgets/themes/text_style.dart';
import 'package:flutter/material.dart';

class ProfileInfoCard extends StatelessWidget {
  Widget build(BuildContext bctx) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return getWideLayout(bctx);
        } else {
          return getNormalLayout(bctx);
        }
      },
    );
  }

  Widget getWideLayout(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Card(
      elevation: 5,
      child: Container(
        height: height * 0.7,
        width: width * 0.6,
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: LegoMaterialFactory.getCircularAvatar(
                width * 0.35,
                avatarImage: 'assets/pexels/ff4.jpeg',
              ),
            ),
            getProfileCard(),
          ],
        ),
      ),
    );
  }

  Widget getNormalLayout(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Card(
      elevation: 3,
      child: Container(
        height: height * 0.5,
        width: width * 0.8,
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: LegoMaterialFactory.getCircularAvatar(
                width * 0.5,
                avatarImage: 'assets/pexels/ff4.jpeg',
              ),
            ),
            getProfileCard(),
          ],
        ),
      ),
    );
  }

  Widget getProfileCard() {
    List<Widget> profileChildren = [
      const Text("Mary Jean", style: AppTextStyle.title),
      LegoMaterialFactory.getSubtitle("Graphics Designer"),
      Divider(
        indent: 30,
        endIndent: 30,
        color: Colors.grey.shade500,
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: LegoMaterialFactory.getTitle("(983) 818 2182"),
      ),
      const Text(
        "mary@jean.com",
        style: AppTextStyle.title,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: FlatButton(
            color: Colors.blue,
            child: const Text("Action", style: TextStyle(color: Colors.white)),
            onPressed: () {},
          ),
        ),
      ),
    ];

    return Column(
      children: profileChildren,
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }
}
