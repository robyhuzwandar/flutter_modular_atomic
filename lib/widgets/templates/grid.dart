import 'package:autopay/shared/mock/service_mock.dart';
import 'package:autopay/widgets/atomics/container/card_primary.dart';
import 'package:autopay/widgets/atomics/container/circular_gradient.dart';
import 'package:autopay/widgets/molecules/molecules.dart';
import 'package:flutter/material.dart';

class TGrid extends StatefulWidget {
  final List<ServiceMock> productMenu;
  final Function(int, int) onTapItem;

  const TGrid({Key key, @required this.productMenu, @required this.onTapItem})
      : super(key: key);

  @override
  _TGridState createState() => _TGridState();
}

class _TGridState extends State<TGrid> {
  @override
  Widget build(BuildContext context) {
    return ACardPrimary(child: _buildContainerContent());
  }

  Widget _buildContainerContent() {
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
          return _buildProductItem(product, indexCategories);
        },
      );
    });
  }

  Widget _buildProductItem(ServiceMock product, int indexCategories) {
    return MCircularGradientItem(
      title: product.title,
      icon: product.icon,
      color: product.color,
    );
  }
}
