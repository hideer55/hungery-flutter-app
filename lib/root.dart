import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:hungry/features/home/views/home_views.dart';
import 'features/basket/views/basker_views.dart';
import 'features/order_hestory/views/order_views.dart';
import 'features/profile/views/profile_views.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  late List<Widget> _views = [];
  int _currentIndex = 0;
  late PageController _controller;


  @override
  void initState() {
    _views = [
      HomeViews(),
      BaskerViews(),
      OrderViews(),
      ProfileViews(),
    ];
    _controller = PageController(initialPage: _currentIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        physics: NeverScrollableScrollPhysics(),
        children: _views,
      ),

      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: NavigationBar(
          height: 80,
            selectedIndex: _currentIndex,
            onDestinationSelected: (index){
              setState(() {
                _currentIndex = index;
                _controller.jumpToPage(_currentIndex);
              });
            },
            backgroundColor: AppColors.primary,

            destinations: [
              AnimatedPadding(
                duration: Duration(milliseconds: 100),
                padding: EdgeInsets.only(top: _currentIndex == 0 ? 0 : 15),
                child: NavigationDestination(
                    icon: SvgPicture.asset('assets/rootview/icons/home.svg'), label: ''),
              ),
              AnimatedPadding(
                duration: Duration(milliseconds: 100),
                padding: EdgeInsets.only(top: _currentIndex == 1 ? 0 : 15),
                child: NavigationDestination(
                    icon: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Image.asset('assets/rootview/icons/pasket.png', color: Colors.white,),
                    ), label: ''),
              ),
              AnimatedPadding(
                duration: Duration(milliseconds: 100),
                padding: EdgeInsets.only(top: _currentIndex == 2 ? 0 : 15),
                child: NavigationDestination(
                    icon: SvgPicture.asset('assets/rootview/icons/history.svg'), label: ''),
              ),
              AnimatedPadding(
                duration: Duration(milliseconds: 100),
                padding: EdgeInsets.only(top: _currentIndex == 3  ? 0 : 15),
                child: NavigationDestination(
                    icon: SvgPicture.asset('assets/rootview/icons/profile.svg'), label: ''),
              ),
            ],

            indicatorColor: Colors.transparent,
            overlayColor: WidgetStateProperty.all(Colors.transparent),


        ),
      ),
    );
  }
}
