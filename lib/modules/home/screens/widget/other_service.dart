import 'package:autopay/shared/mock/service_mock.dart';
import 'package:autopay/widgets/molecules/molecules.dart';
import 'package:autopay/widgets/organisms/header_service.dart';
import 'package:flutter/material.dart';

class OtherService extends StatelessWidget {
  final Function onTapItem;

  const OtherService({Key key, this.onTapItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          OHeader(title: 'MENU LAINNYA'),
          _buildListService(context),
        ],
      ),
    );
  }

  _buildListService(context) {
    return Expanded(
      child: ListView.builder(
          itemCount: listOtherFeature.length,
          itemBuilder: (context, index) {
            final item = listOtherFeature[index];
            return _buildServiceItem(item);
          }),
    );
  }

  Widget _buildServiceItem(ServiceMock product) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(31, 0, 20, 10),
            child: InkWell(
              onTap: () => onTapItem(product.title),
              child: MCircularGradientItem(
                title: product.title,
                icon: product.icon,
                gradient: product.gradient,
                labelHorizontal: true,
              ),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
