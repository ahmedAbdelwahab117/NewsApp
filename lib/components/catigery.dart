import 'package:flutter/material.dart';
import 'package:news/models/catigeryModel.dart';
import 'package:news/screens/category_view.dart';
import 'package:news/utils/app_color.dart';

class Catigery extends StatelessWidget {
  Catigery({super.key, required this.item});
  CatigeryModel item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CarigeryView(
                  category: item.text,
                ),
              )),
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(item.image), fit: BoxFit.fill)),
              height: 100,
              width: 185,
              child: Center(
                child: Text(
                  item.text,
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
