import 'package:autopay/modules/login/login_page.dart';
import 'package:autopay/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardPage extends StatefulWidget {
  @override
  _OnBoardPageState createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  List<SliderModel> mySLides = new List<SliderModel>();
  int slideIndex = 0;
  PageController controller;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.5),
      height: isCurrentPage ? 10.0 : 10.0,
      width: isCurrentPage ? 10.0 : 10.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? mainColor : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: mainColor,
          width: 1,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    mySLides = getSlides();
    controller = new PageController();
    changeStatusBarColor(mainColor, true);
  }

  @override
  Widget build(BuildContext context) {
    double widthButton = (MediaQuery.of(context).size.width - 92) / 2;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [const Color(0xff3C8CE7), const Color(0xff00EAFF)])),
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height - 100,
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  slideIndex = index;
                });
              },
              children: <Widget>[
                SlideTile(
                  logo: mySLides[0].getLogo(),
                  bgPath: mySLides[0].getBgAssetPath(),
                  imagePath: mySLides[0].getImageAssetPath(),
                  title: mySLides[0].getTitle(),
                  desc: mySLides[0].getDesc(),
                ),
                SlideTile(
                  logo: mySLides[1].getLogo(),
                  bgPath: mySLides[1].getBgAssetPath(),
                  imagePath: mySLides[1].getImageAssetPath(),
                  title: mySLides[1].getTitle(),
                  desc: mySLides[1].getDesc(),
                ),
                SlideTile(
                  logo: mySLides[2].getLogo(),
                  bgPath: mySLides[2].getBgAssetPath(),
                  imagePath: mySLides[2].getImageAssetPath(),
                  title: mySLides[2].getTitle(),
                  desc: mySLides[2].getDesc(),
                ),
                SlideTile(
                  logo: mySLides[3].getLogo(),
                  bgPath: mySLides[3].getBgAssetPath(),
                  imagePath: mySLides[3].getImageAssetPath(),
                  title: mySLides[3].getTitle(),
                  desc: mySLides[3].getDesc(),
                )
              ],
            ),
          ),
          bottomSheet: Container(
              color: Colors.white,
              height: 119,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: [
                            for (int i = 0; i < 4; i++)
                              i == slideIndex
                                  ? _buildPageIndicator(true)
                                  : _buildPageIndicator(false),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 27),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ButtonTheme(
                          height: 38,
                          minWidth: widthButton,
                          child: FlatButton(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4)),
                              color: mainColor,
                              onPressed: () {
                                changeStatusBarColor(Colors.transparent, false);
                                Get.off(LoginPage());
                                //context.bloc<PageBloc>().add(GoToLoginPage());
                              }),
                        ),
                        ButtonTheme(
                          height: 38,
                          minWidth: widthButton,
                          child: FlatButton(
                              child: Text(
                                "Daftar",
                                style: TextStyle(
                                    color: mainColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                  side: BorderSide(color: mainColor, width: 1)),
                              color: Colors.white,
                              onPressed: () {
                                // context
                                //     .bloc<PageBloc>()
                                //     .add(GoToSplashPage());
                              }),
                        ),
                      ],
                    ),
                  ),
                ],
              ))),
    );
  }
}

class SliderModel {
  String logo;
  String bgAssetPath;
  String imageAssetPath;
  String title;
  String desc;

  SliderModel(
      {this.logo,
      this.bgAssetPath,
      this.imageAssetPath,
      this.title,
      this.desc});

  void setLogo(String getLogo) {
    logo = getLogo;
  }

  void setBgAssetPath(String getBgAssetPath) {
    bgAssetPath = getBgAssetPath;
  }

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String getLogo() {
    return logo;
  }

  String getBgAssetPath() {
    return bgAssetPath;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return desc;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setLogo(logoAutoPayWhite);
  sliderModel.setDesc("Topup ke wallet bikin transaksi cepat\ndan lancar.");
  sliderModel.setTitle("Topup Sekali Banyak Untungnya");
  sliderModel.setBgAssetPath("assets/images/bg_onboard/bg_walkthrough_1.png");
  sliderModel
      .setImageAssetPath("assets/images/il_onboard/il_walkthrough_1.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setLogo(logoAutoPayWhite);
  sliderModel
      .setDesc("Kamu gak perlu cape ngantri buat\nbayar tagihan bulanan. ");
  sliderModel.setTitle("Bayar Tagihan Tanpa Antri");
  sliderModel.setBgAssetPath("assets/images/bg_onboard/bg_walkthrough_2.png");
  sliderModel
      .setImageAssetPath("assets/images/il_onboard/il_walkthrough_2.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setLogo(logoAutoPayWhite);
  sliderModel.setDesc(
      "Sekarang kamu bisa transfer uang ke\nBank mana aja tanpa perlu ke ATM.");
  sliderModel.setTitle("Transfer Uang Ke Bank Mana Aja");
  sliderModel.setBgAssetPath("assets/images/bg_onboard/bg_walkthrough_3.png");
  sliderModel
      .setImageAssetPath("assets/images/il_onboard/il_walkthrough_3.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //4
  sliderModel.setLogo(logoAutoPayWhite);
  sliderModel.setDesc(
      "Sekarang kamu bisa transfer uang ke\nBank mana aja tanpa perlu ke ATM.");
  sliderModel.setTitle("Jadiin Asisten Supaya Gak Telat");
  sliderModel.setBgAssetPath("assets/images/bg_onboard/bg_walkthrough_4.png");
  sliderModel
      .setImageAssetPath("assets/images/il_onboard/il_walkthrough_4.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}

// ignore: must_be_immutable
class SlideTile extends StatelessWidget {
  String logo, bgPath, imagePath, title, desc;

  SlideTile({this.logo, this.bgPath, this.imagePath, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      child: Stack(
        children: <Widget>[
          Image.asset(bgPath),
          Container(
            margin: EdgeInsets.only(left: 18),
            alignment: Alignment.topCenter,
            child: Container(
                transform:
                    Matrix4.translationValues(0.0, statusBarHeight + 7, 0.0),
                height: 120,
                width: 170,
                child: Image.asset(logo)),
          ),
          Container(alignment: Alignment.center, child: Image.asset(imagePath)),
          Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.symmetric(horizontal: 85),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  Text(
                    desc,
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
                  ),
                  SizedBox(height: 34)
                ],
              )),
        ],
      ),
    );
  }
}
