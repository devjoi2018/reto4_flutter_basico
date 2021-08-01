import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import '../../../controllers/home_controller.dart';

// ignore: public_member_api_docs
class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              _avatar(),
              _titleText(),
              _gridItems(controller),
              _nextAndPrevText(),
              _tabBar(controller),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _avatar() {
  return Padding(
    padding: EdgeInsets.only(
      right: (Get.width * 0.048).roundToDouble(),
      top: (Get.height * 0.026).roundToDouble(),
    ),
    child: Align(
      alignment: Alignment.topRight,
      child: GFAvatar(
        child: GFAvatar(
          backgroundImage: const NetworkImage('https://bit.ly/3rJDIoU'),
          radius: (Get.width * 0.059).roundToDouble(),
        ),
        radius: (Get.width * 0.063).roundToDouble(),
        backgroundColor: Colors.grey,
      ),
    ),
  );
}

Widget _titleText() {
  final Color _colorText = Colors.white;
  final double _fontSize = 55.0;
  final FontWeight _fontWeight = FontWeight.bold;

  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(left: (Get.width * 0.064).roundToDouble()),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Skills',
            style: TextStyle(
              color: _colorText,
              fontSize: _fontSize,
              fontWeight: _fontWeight,
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: (Get.width * 0.064).roundToDouble()),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            'To Pump!',
            style: TextStyle(
              color: _colorText,
              fontSize: _fontSize,
              fontWeight: _fontWeight,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget _gridItems(HomeController controller) {
  final BorderRadius _radius = BorderRadius.circular((Get.width * 0.055).roundToDouble());

  Widget _item(
    BorderRadius _radius,
    Color _circleColor,
    Color _containerColor,
    String _text,
    String _image,
    double _imageHeight,
  ) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints size) {
        return Container(
          padding: EdgeInsets.only(
            bottom: (size.maxHeight * 0.117).roundToDouble(),
            top: (size.maxHeight * 0.117).roundToDouble(),
          ),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints size) {
              return Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      GFAvatar(
                        backgroundColor: _circleColor,
                        radius: (size.maxWidth * 0.304).roundToDouble(),
                      ),
                      SizedBox(
                        height: (size.maxHeight * 0.10).roundToDouble(),
                      ),
                      Flexible(
                        child: Text(
                          _text,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/$_image',
                      height: _imageHeight,
                    ),
                  ),
                ],
              );
            },
          ),
          decoration: BoxDecoration(
            borderRadius: _radius,
            color: _containerColor,
          ),
        );
      },
    );
  }

  return Expanded(
    child: GridView.count(
      padding: EdgeInsets.only(
        top: (Get.height * 0.0477).roundToDouble(),
        left: (Get.width * 0.055).roundToDouble(),
        right: (Get.width * 0.055).roundToDouble(),
      ),
      crossAxisSpacing: (Get.width * 0.037).roundToDouble(),
      mainAxisSpacing: (Get.height * 0.017).roundToDouble(),
      crossAxisCount: 2,
      childAspectRatio: (Get.height / Get.width) / 2.55,
      primary: false,
      children: <Widget>[
        _item(
          _radius,
          const Color(0xff635385),
          const Color(0xff3C2968),
          'Technique',
          '1.png',
          (Get.width * 0.37).roundToDouble(),
        ),
        _item(
          _radius,
          const Color(0xffFD7678),
          const Color(0xffFE5258),
          'Arsenal',
          '2.png',
          (Get.width * 0.333).roundToDouble(),
        ),
        _item(
          _radius,
          const Color(0xff48D0C7),
          const Color(0xff18C8B8),
          'Coordination',
          '3.png',
          (Get.width * 0.277).roundToDouble(),
        ),
        _item(
          _radius,
          const Color(0xffFEBD56),
          const Color(0xffFFAC2C),
          'Songs',
          '4.png',
          (Get.width * 0.37).roundToDouble(),
        ),
      ],
    ),
  );
}

Widget _nextAndPrevText() {
  return Padding(
    padding: EdgeInsets.only(
      left: (Get.width * 0.083).roundToDouble(),
      right: (Get.width * 0.083).roundToDouble(),
      bottom: (Get.height * 0.0868).roundToDouble(),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: (Get.width * 0.055).roundToDouble(),
        ),
        const Text(
          'LESSON PLAN',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: (Get.width * 0.092).roundToDouble(),
        ),
        const Text(
          'YOUR PROGRESS',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
          size: (Get.width * 0.055).roundToDouble(),
        ),
      ],
    ),
  );
}

Widget _tabBar(HomeController controller) {
  LayoutBuilder _icons(IconData _icon) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints size) {
        return Icon(_icon, size: (size.maxWidth * 0.388).roundToDouble());
      },
    );
  }

  return GFTabBar(
    tabBarColor: Colors.black,
    length: 4,
    controller: controller.tabController,
    tabs: <Widget>[
      _icons(Icons.timer),
      _icons(Icons.tune),
      _icons(Icons.chat_bubble),
      _icons(Icons.favorite),
    ],
  );
}
