import 'package:autopay/shared/mock/feature_mock.dart';
import 'package:autopay/widgets/molecules/molecules.dart';
import 'package:flutter/material.dart';

class FeatureItem extends StatelessWidget {
  final FeatureeMock feature;

  const FeatureItem({Key key, this.feature}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MCircularItem(
      title: feature.title,
      icon: feature.icon,
    );
  }
}
