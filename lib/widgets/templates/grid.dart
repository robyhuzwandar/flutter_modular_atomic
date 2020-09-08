import 'package:autopay/shared/mock/service_mock.dart';
import 'package:autopay/widgets/atomics/container/card_primary.dart';
import 'package:autopay/widgets/molecules/molecules.dart';
import 'package:flutter/material.dart';

class TGrid extends StatefulWidget {
  final List<ServiceMock> productMenu;
  final Function onTapItem;

  const TGrid({Key key, @required this.productMenu, @required this.onTapItem})
      : super(key: key);

  @override
  _TGridState createState() => _TGridState();
}

class _TGridState extends State<TGrid> {
  @override
  Widget build(BuildContext context) {
    return ACardPrimary(child: _buildGridList());
  }

  Widget _buildGridList() {
    return OrientationBuilder(builder: (context, orientation) {
      return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(top: 5),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemCount: widget.productMenu.length,
        itemBuilder: (context, index) {
          var product = widget.productMenu[index];
          var indexCategories = widget.productMenu.indexOf(product);
          return _buildServiceItem(product, indexCategories);
        },
      );
    });
  }

  Widget _buildServiceItem(ServiceMock product, int indexCategories) {
    return InkWell(
      onTap: () => widget.onTapItem(product.title),
      child: MCircularGradientItem(
        title: product.title,
        icon: product.icon,
        gradient: product.gradient,
      ),
    );
  }
}
