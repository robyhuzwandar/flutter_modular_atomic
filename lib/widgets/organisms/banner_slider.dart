import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../shared/shared.dart';

class BannerSliderOrg extends StatefulWidget {
  final List<dynamic> bannerList; //TODO: Validate list data type

  const BannerSliderOrg({Key key, this.bannerList}) : super(key: key);

  @override
  _BannerSliderOrgState createState() => _BannerSliderOrgState();
}

class _BannerSliderOrgState extends State<BannerSliderOrg> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildBannerSliders(),
        _buildIndicatorSliders(),
      ],
    );
  }

  Widget _buildBannerSliders() {
    return CarouselSlider.builder(
        itemCount: widget.bannerList.length,
        options: CarouselOptions(
            autoPlay: true,
            viewportFraction: 0.8,
            enlargeCenterPage: true,
            aspectRatio: 12 / 4.2,
            initialPage: 1,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              widget.bannerList[index]["img"],
              fit: BoxFit.fill,
            ),
          );
        });
  }

  Widget _buildIndicatorSliders() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.bannerList.map((url) {
        int index = widget.bannerList.indexOf(url);
        return AnimatedContainer(
          width: 10.0,
          height: 10.0,
          duration: Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: primaryColor['blue']),
            color: _current == index ? primaryColor['blue'] : Colors.white,
          ),
        );
      }).toList(),
    );
  }
}
