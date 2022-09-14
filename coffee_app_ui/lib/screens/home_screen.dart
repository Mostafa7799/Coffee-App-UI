import 'package:badges/badges.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:coffee_app_ui/core/utils/app_colors.dart';
import 'package:coffee_app_ui/widgets/cappuccino_product_widget.dart';
import 'package:coffee_app_ui/widgets/on_sale_widgwt.dart';
import 'package:coffee_app_ui/widgets/search_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircularProfileAvatar(
                    child: Image.asset(
                      'assets/images/mo.jpg',
                      fit: BoxFit.fill,
                    ),
                    'assets/images/mo.jpg',
                    radius: 40,
                    elevation: 0,
                    cacheImage: false,
                    imageFit: BoxFit.cover,
                    onTap: () {
                      print('adil');
                    },
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: AppColors.mainColor,
                        size: 25,
                      ),
                      const Text(
                        'Faqous,',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w800),
                      ),
                      const Text(
                        'Egypt,',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  Badge(
                    toAnimate: true,
                    shape: BadgeShape.circle,
                    badgeColor: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                    position: BadgePosition.topEnd(top: 0, end: 0),
                    child: Icon(
                      Icons.add_alert_outlined,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: const [
                  Text(
                    'Good morning, ',
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                  Text(
                    'Mostafa',
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const SearchWidget(),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Categories',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  button(
                      color: AppColors.mainColor,
                      text: 'Cappuccino',
                      icon: Icons.coffee,
                      iconColor: Colors.white,
                      textColor: Colors.white),
                  button(
                      color: Colors.white,
                      text: 'Cold Brew',
                      icon: Icons.coffee_outlined,
                      iconColor: AppColors.mainColor,
                      textColor: Colors.black87),
                  button(
                      color: Colors.white,
                      text: 'Expresso',
                      icon: Icons.coffee_rounded,
                      iconColor: AppColors.mainColor,
                      textColor: Colors.black87),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CappuccinoProductsWidget(
                    rate: 5.9,
                    imageUrl: 'assets/images/coffe1.jpg',
                    additional: 'With Chocolate',
                    views: '50 k',
                  ),
                  CappuccinoProductsWidget(
                    rate: 5.9,
                    imageUrl: 'assets/images/coffe2.jpg',
                    additional: 'With Low Fat Milk',
                    views: '90 k',
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    'Special Offer',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                  Image.asset(
                    'assets/images/sale.png',
                    width: 50,
                    height: 30,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              OnSaleWidget()
            ],
          ),
        ),
      ),
    );
  }

  Widget button({
    required Color color,
    required Color textColor,
    required Color iconColor,
    required String text,
    required IconData icon,
  }) {
    return Container(
      width: MediaQuery.of(context).size.width * .29,
      height: MediaQuery.of(context).size.height * .05,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
      ),
      child: MaterialButton(
        onPressed: () {
          // Not work yet
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 16,
              color: iconColor,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w700,
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
