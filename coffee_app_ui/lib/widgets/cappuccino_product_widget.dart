import 'package:coffee_app_ui/core/utils/app_colors.dart';
import 'package:coffee_app_ui/screens/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CappuccinoProductsWidget extends StatefulWidget {
  const CappuccinoProductsWidget(
      {Key? key,
      required this.rate,
      required this.imageUrl,
      required this.additional,
      required this.views})
      : super(key: key);
  final double rate;
  final String imageUrl;
  final String additional;
  final String views;

  @override
  State<CappuccinoProductsWidget> createState() =>
      _CappuccinoProductsWidgetState();
}

class _CappuccinoProductsWidgetState extends State<CappuccinoProductsWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailsScreen();
          }));
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .15,
              width: MediaQuery.of(context).size.width * .4,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    //add border radius
                    child: Image.asset(widget.imageUrl,
                        fit: BoxFit.fill,
                        height: MediaQuery.of(context).size.height * .15,
                        width: MediaQuery.of(context).size.width * .4),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 25,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: AppColors.mainColor),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star_sharp,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              widget.rate.toString(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cappuccino',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      widget.additional.toString(),
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      widget.views.toString(),
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 17,
                ),
                Icon(
                  Icons.add_circle,
                  color: AppColors.mainColor,
                  size: 50,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
