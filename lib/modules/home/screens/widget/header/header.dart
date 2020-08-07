import 'package:autopay/shared/mock/feature_mock.dart';
import 'package:autopay/shared/shared.dart';
import 'package:autopay/widgets/atomics/atomics.dart';
import 'package:autopay/widgets/atomics/container/card_primary.dart';
import 'package:flutter/material.dart';

import '../header/header_content.dart';
import 'feature_item.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 202,
      child: Stack(
        alignment: Alignment.bottomCenter,
        overflow: Overflow.visible,
        children: [
          _buildBackground(),
          Positioned(bottom: -30, child: _buildFeature(context)),
        ],
      ),
    );
  }

  _buildBackground() {
    return AImageBackground(
      image: bgHeaderHome,
      height: 202,
      child: HeaderContent(),
    );
  }

  _buildFeature(context) {
    return ACardPrimary(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      width: MediaQuery.of(context).size.width - 60,
      color: commonColor['greyBlue'],
      radius: 10,
      withShadow: true,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: feature.map((item) => FeatureItem(feature: item)).toList(),
      ),
    );
  }
}
