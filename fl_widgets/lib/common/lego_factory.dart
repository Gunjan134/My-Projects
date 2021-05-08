import 'package:fl_widgets/themes/text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LegoMaterialFactory {
  static Widget getRowOfIcons(
      {List<IconData> icons = const [
        FontAwesomeIcons.solidHeart,
        Icons.chat_bubble_outline,
        Icons.send,
        Icons.bookmark
      ]}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  icons[0],
                  size: 20,
                  color: Colors.red.shade600,
                ),
                Icon(
                  icons[1],
                  size: 20,
                  color: Colors.green.shade600,
                ),
                Icon(
                  icons[2],
                  size: 20,
                  color: Colors.blue.shade600,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.centerRight,
              child: Icon(
                icons[3],
                size: 25,
                color: Colors.lightBlue.shade600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget getImageContainer(
      {String imageName = "assets/pexels/4.jpeg", double height: 150}) {
    return Container(
      height: height,
      child: Image.asset(imageName, fit: BoxFit.cover),
    );
  }

  static Widget getTitle(String title, {double padding = 2.0}) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Text(
        title,
        style: AppTextStyle.listTitle,
      ),
    );
  }

  static Widget getSubtitle(String subtitle) {
    return Text(
      subtitle,
      style: TextStyle(
        fontSize: 13,
      ),
    );
  }

  static Widget getAvatarTile(
      {String avatarImage = "assets/pexels/ff7.jpeg",
      String title = "The Avatar Tile",
      String subtitle = "By Awesome Developer",
      IconData icondata = Icons.more_vert}) {
    return ListTile(
      leading: avatarImage != null
          ? CircleAvatar(
              backgroundImage: AssetImage(avatarImage),
            )
          : null,
      title: Text(title, style: AppTextStyle.listTitle),
      subtitle: Text(subtitle, style: TextStyle(fontSize: 13)),
      trailing: Icon(icondata),
      dense: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
    );
  }

  static Widget getTextDescriptionRow(
      {String description =
          "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.",
      TextOverflow overflow = TextOverflow.fade}) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            child: Text(
              description,
              overflow: TextOverflow.fade,
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }

  static Widget get4Icons1ButtonRow(
      {List<IconData> icons = const [
        FontAwesomeIcons.solidHeart,
        Icons.chat_bubble_outline,
        Icons.send,
        Icons.bookmark
      ],
      String buttonTitle = "BOOK"}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(
                icons[0],
                size: 18,
                color: Colors.grey.shade400,
              ),
              Icon(
                icons[1],
                size: 18,
                color: Colors.grey.shade400,
              ),
              Icon(
                icons[2],
                size: 18,
                color: Colors.grey.shade400,
              ),
              Icon(
                icons[3],
                size: 18,
                color: Colors.grey.shade400,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          flex: 1,
          child: FlatButton(
            onPressed: () {},
            padding: const EdgeInsets.all(0),
            child: Text(
              buttonTitle,
              overflow: TextOverflow.fade,
              style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  static Widget getIconTileTitleOnlyRow(
      {IconData leadingIcon = Icons.view_list,
      String title = "A Tile Title",
      IconData trailingIcon = Icons.more_vert}) {
    return ListTile(
      leading: Icon(leadingIcon),
      title: Text(
        title,
        style: AppTextStyle.listTitle,
      ),
      trailing: Icon(trailingIcon),
      dense: false,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 1,
        vertical: 1,
      ),
    );
  }

  static Widget getCardFooter2RowsText(double width,
      {title = "A Nice Small Card Title", subtitle = "01:22 | 13 hrs ago"}) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Text(
                            title,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyle.sliderTitle,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            subtitle,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyle.listDescription,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget getSmallCardType1(String imageName,
      {double height = 130,
      double width = 120,
      String title = "A Title Needed",
      String subtitle = "A subtitle will appear here"}) {
    return Center(
      child: Container(
        height: height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: LegoMaterialFactory.getImageContainer(
                  imageName: "assets/pexels/$imageName.jpeg"),
            ),
            LegoMaterialFactory.getCardFooter2RowsText(
              width,
              title: title,
              subtitle: subtitle,
            ),
          ],
        ),
      ),
    );
  }

  static getCircularAvatar(double width,
      {String avatarImage = "assets/pexels/ff6.jpeg"}) {
    return CircleAvatar(
      radius: width * 0.3,
      backgroundImage: AssetImage(avatarImage),
    );
  }
}
