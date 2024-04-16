import 'package:flutter/material.dart';
import 'package:to_do/UI/Utils/app_color.dart';

import '../Utils/app_theme.dart';

class ToDoWidget extends StatelessWidget {
  const ToDoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: AppColors.White,
      ),
      padding: EdgeInsets.symmetric(horizontal:18, vertical:24 ),
      margin: EdgeInsets.symmetric(horizontal: 30 , vertical: 22),
      child: Row(
        children: [
          Container(
            height: 62,
            width: 5,
            decoration: BoxDecoration(
              color:  AppColors.lightBlue,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Play BasketBall " ,
                  style: AppTheme.lightContentTextStyle,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 5,),
                Text("Description" , style: AppTheme.lightTimingContent,)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8 , horizontal: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: AppColors.lightBlue,
            ),
            child: Icon(Icons.check , size: 30, color: AppColors.White,) ,
          ),
        ],
      ),
    );
  }
}
