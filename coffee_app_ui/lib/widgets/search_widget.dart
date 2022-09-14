import 'package:coffee_app_ui/core/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _StateSearchWidget();
}

class _StateSearchWidget extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: AppColors.grayColor,
              ),
              suffixIcon: IconButton(
                icon:  Icon(
                  Icons.format_list_numbered_rtl_outlined,
                  color: AppColors.mainColor,
                  size: 30,
                ),
                onPressed: () {
                  /* Clear the search field */
                },
              ),
              hintText: 'Search Coffee..',
              border: InputBorder.none),
        ),
      ),
    );
  }
}
