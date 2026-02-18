import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/constants/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hungry/features/Sign/log_in/log_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _logoSlide;
  late Animation<Offset> _imageSlide;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () => Navigator.push(context, MaterialPageRoute(builder: (c) => LogView())));

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    _logoSlide = Tween<Offset>(
      begin: const Offset(0, -0.3),
      end: Offset.zero,
    ).animate(_fadeAnimation);

    _imageSlide = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(_fadeAnimation);

    _controller.forward();


  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          children: [
            const Gap(250),

            /// Logo animation
            FadeTransition(
              opacity: _fadeAnimation,
              child: SlideTransition(
                position: _logoSlide,
                child: SvgPicture.asset(
                  'assets/logo/Hungry_.svg',
                ),
              ),
            ),

            const Spacer(),

            /// Image animation
            FadeTransition(
              opacity: _fadeAnimation,
              child: SlideTransition(
                position: _imageSlide,
                child: Image.asset('assets/splash/image 1.png',),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
