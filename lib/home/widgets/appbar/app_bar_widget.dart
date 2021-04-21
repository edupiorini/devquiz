import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/widgets/scorecard/score_card_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
  AppBarWidget()
      : super(
            preferredSize: Size.fromHeight(250),
            child: Container(
                height: 250,
                child: Stack(
                  children: [
                    Container(
                      height: 161,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(gradient: AppGradients.linear),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(
                              text: "Olá, ",
                              style: AppTextStyles.title,
                              children: [
                                TextSpan(
                                  text: "Laura Piorini",
                                  style: AppTextStyles.titleBold,
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 58,
                            height: 58,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://scontent.fsjk2-1.fna.fbcdn.net/v/t1.6435-9/119169942_10224345399406366_8697816959624030214_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeE-38c41lZkXMfz03jR4kdmA3mN9SVm-14DeY31JWb7Xui-ub79megI-IxsqCWZl9I&_nc_ohc=QszmX8iEolcAX8N8OKM&_nc_ht=scontent.fsjk2-1.fna&oh=d5b48644d0fdf189ee36192dbba0a6df&oe=60A3D4EE'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Align(
                        alignment: Alignment(0.0, 1.0),
                        child: ScoreCardWidget())
                  ],
                )));
}
