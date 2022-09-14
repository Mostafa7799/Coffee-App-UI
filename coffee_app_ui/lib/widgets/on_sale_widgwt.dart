import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';

class OnSaleWidget extends StatelessWidget {
  const OnSaleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0), //add border radius
            child: Image.asset(
                'assets/images/coffe3.jpg',
                fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .28,
                height: MediaQuery.of(context).size.height * .05,
                decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(18)),
                child: MaterialButton(
                  onPressed: () {},
                  child: const Text(
                    'Limited',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Buy 1 get 1 free \nif you buy with\n Gopay',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
