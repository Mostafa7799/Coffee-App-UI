import 'package:coffee_app_ui/core/global/global_methods.dart';
import 'package:flutter/material.dart';

import '../core/utils/app_colors.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery
            .of(context)
            .size
            .height * .99,
        child: Expanded(
          child: Stack(
            children: [
              Image.asset(
                'assets/images/coffe1.jpg',
                height: MediaQuery
                    .of(context)
                    .size
                    .height * .55,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6.0, vertical: 0),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black87,
                        size: 33,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * .22,
                  width: double.infinity,
                  decoration:
                  BoxDecoration(color: Colors.black87.withOpacity(.3)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22.0, vertical: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Cappuccino',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 28),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              'With Chocolate',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: AppColors.mainColor),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.star_sharp,
                                color: Colors.white,
                                size: 24,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                '4.9',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SingleChildScrollView(
                    child: Expanded(
                      child: Container(
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * .50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 20),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: MediaQuery
                                        .of(context)
                                        .size
                                        .height * .08,
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(40)),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Flexible(
                                          flex: 2,
                                          child: Text(
                                            'Coffee',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ),
                                        divider(
                                          Colors.black
                                        ),
                                        Flexible(
                                          flex: 3,
                                          child: Text(
                                            'Chocolate',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ),
                                        divider(Colors.black),
                                        Flexible(
                                          flex: 1,
                                          child: Text(
                                            'Medium Roasted',
                                            style: TextStyle(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Coffee Size',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      sizeButton(
                                        context: context,
                                        text: 'Small',
                                        textColor: Colors.white,
                                        backgroundColor: AppColors.mainColor,
                                      ),
                                      sizeButton(
                                        context: context,
                                        text: 'Medium',
                                        textColor: Colors.black87,
                                        backgroundColor: Colors.white,
                                      ),
                                      sizeButton(
                                        context: context,
                                        text: 'Large',
                                        textColor: Colors.black87,
                                        backgroundColor: Colors.white,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'About',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Id ipsum vivamus velit lorem amet. Tincidunt cras volutpat aliquam porttitor molestie. Netus neque, habitasse id vulputate proin cras. Neque, vel duis sit vel pellentesque tempor. A commodo arcu tortor arcu, elit. ',
                                    overflow: TextOverflow.visible,
                                    softWrap: true,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    width:double.infinity,
                                    height: MediaQuery
                                        .of(context)
                                        .size
                                        .height * .085,
                                    decoration: BoxDecoration(
                                        color: AppColors.mainColor,
                                        borderRadius: BorderRadius.circular(18)),
                                    child: MaterialButton(
                                      onPressed: () {},
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Flexible(
                                            flex: 4,
                                            child: Text(
                                              'Add to Cart',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 22,
                                              ),
                                            ),
                                          ),
                                          divider(Colors.white),
                                          Flexible(
                                            child: Text(
                                              '50 k',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 22,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget sizeButton({required BuildContext context,
    required String text,
    required textColor,
    required backgroundColor}) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width * .29,
      height: MediaQuery
          .of(context)
          .size
          .height * .06,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(0, 5), // changes position of shadow
          )
        ],
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.normal,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
