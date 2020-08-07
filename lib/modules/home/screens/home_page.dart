import 'package:autopay/shared/mock/banner_mock.dart';
import 'package:autopay/shared/mock/guide_mock.dart';
import 'package:autopay/shared/mock/service_mock.dart';
import 'package:autopay/widgets/organisms/banner_slider.dart';
import 'package:autopay/widgets/templates/grid.dart';
import 'package:flutter/material.dart';
import 'widget/guide_card.dart';
import 'widget/guilde_label.dart';
import 'widget/header/header.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Header(),
            SizedBox(height: 50),
            _buildContent(),
            BannerSliderOrg(bannerList: bannerList),
            GuideLabel(),
            _buildGuideList()
          ],
        ),
      ),
    );
  }

  _buildContent() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TGrid(productMenu: listFeature, onTapItem: null),
    );
  }

  _buildGuideList() {
    return Container(
      height: 84,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: guidesMock.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: index == 0 ? 31 : 0),
            child: GuideCard(
              text: guidesMock[index],
            ),
          );
        },
      ),
    );
  }
}
