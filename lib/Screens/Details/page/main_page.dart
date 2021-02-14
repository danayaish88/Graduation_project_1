import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_test/Screens/Details/places.dart';
import 'package:sign_in_test/Screens/Details/widget/panel_widget.dart';
import 'package:sign_in_test/components/bottom_navigation_bar.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final place = places[0];
  final panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.bookmark_border,size: 35,),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.close, size: 35,),

            onPressed: () {},
          )
        ],
      ),
      body: SlidingUpPanel(
        maxHeight: 340,
        minHeight: 150,
        parallaxEnabled: true,
        parallaxOffset: 0.5,
        controller: panelController,
        color: Colors.transparent,

        body:PageView(
          children: [
            SizedBox(height: 480,
              width: double.infinity,
              child: Carousel(
                dotSize: 5,
                dotVerticalPadding: 220,
                dotBgColor: Colors.transparent,
                autoplayDuration: Duration(seconds: 12),
                images: [Image.asset('assets/images/china.jpg', fit: BoxFit.cover),
                  Image.asset('assets/images/piza.jpg', fit: BoxFit.cover,)
                ],
              ),)
          ],
        ),
        panelBuilder: (ScrollController scrollController)=>PanelWidget(
          place: place,
          onClickedPanel: panelController.open,

        ),
      ),
      bottomNavigationBar: BottomNavBar(),

    );
  }
}
