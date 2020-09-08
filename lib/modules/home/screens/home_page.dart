import 'package:autopay/shared/mock/banner_mock.dart';
import 'package:autopay/shared/mock/guide_mock.dart';
import 'package:autopay/shared/mock/service_mock.dart';
import 'package:autopay/shared/shared.dart';
import 'package:autopay/widgets/organisms/banner_slider.dart';
import 'package:autopay/widgets/templates/grid.dart';
import 'package:flutter/material.dart';
import 'widget/guide_card.dart';
import 'widget/guilde_label.dart';
import 'widget/header/header.dart';
import 'widget/other_service.dart';

class HomePage extends StatelessWidget {
  openSerivce(String serviceType, BuildContext context) {
    print('serviceType : $serviceType');
    switch (serviceType) {
      case ServiceType.pulsa:
        print('go to pulsa');
        break;
      case ServiceType.paketData:
        print('go to paket data');
        break;
      case ServiceType.banking:
        print('go to banking');
        break;
      case ServiceType.pln:
        print('go to pln');
        break;
      case ServiceType.bpjs:
        print('go to bpjs');
        break;
      case ServiceType.gojek:
        print('go to gojek');
        break;
      case ServiceType.lainnya:
        Navigation.sideNavigation(context, OtherService());
        break;
      default:
    }
  }

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
            _buildGridService(context),
            BannerSliderOrg(bannerList: bannerList),
            GuideLabel(),
            _buildGuideList()
          ],
        ),
      ),
    );
  }

  _buildGridService(context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TGrid(
          productMenu: listFeature,
          onTapItem: (serviceType) => {openSerivce(serviceType, context)}),
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
