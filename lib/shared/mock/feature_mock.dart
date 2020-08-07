import 'package:autopay/shared/assets.dart';
import 'package:flutter/material.dart';

class FeatureeMock {
  final String title;
  final String icon;

  FeatureeMock({this.title, this.icon});
}

List<FeatureeMock> feature = [
  FeatureeMock(icon: IconFeature.iconTopup, title: 'Top Up'),
  FeatureeMock(icon: IconFeature.iconTransfer, title: 'Transfer'),
  FeatureeMock(icon: IconFeature.iconQrcode, title: 'QR Code'),
  FeatureeMock(icon: IconFeature.iconShare, title: 'Share'),
];
