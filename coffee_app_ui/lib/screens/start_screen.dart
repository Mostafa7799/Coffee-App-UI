import 'package:card_swiper/card_swiper.dart';
import 'package:coffee_app_ui/core/utils/app_colors.dart';
import 'package:coffee_app_ui/screens/bottom_bar_screen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Swiper(
            itemBuilder: (BuildContext context, int index) {
              return Image.asset(
                'assets/images/loading.jpg',
                fit: BoxFit.fill,
              );
            },
            itemCount: 3,
            pagination: SwiperPagination(
                alignment: Alignment.bottomCenter,
                builder: DotSwiperPaginationBuilder(
                  color: Colors.white,
                  activeColor: AppColors.mainColor,
                )),
            autoplay: true,
          ),
          Container(
            color: Colors.black87.withOpacity(0.6),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .45,
                ),
                const Text(
                  'Good coffee,\nGood friends,\nlet it blends',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                const SizedBox(
                  height: 13,
                ),
                const Text(
                  'The best grain, the finest roast,\n the most powerful flavor.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .83,
                  height: MediaQuery.of(context).size.height * .085,
                  decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(18)),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const BottomBarScreen();
                      }));
                    },
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
