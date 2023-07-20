import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/resource/app_class.dart';
import '../../resource/colors.dart';


class ExperienceWeb extends StatefulWidget {
  const ExperienceWeb({Key? key}) : super(key: key);

  @override
  State<ExperienceWeb> createState() => _ExperienceWebState();
}

class _ExperienceWebState extends State<ExperienceWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppClass().getMqHeight(context) - 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                    text: "02.",
                    style: TextStyle(
                        color: AppColors().neonColor,
                        fontSize: 20,
                        fontFamily: 'sfmono'),
                    children: <TextSpan>[
                      TextSpan(
                        text: ''' Where I've Worked''',
                        style: GoogleFonts.robotoSlab(
                            color: Colors.white,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      )
                    ]),
              ),
              Container(
                height: 0.5,
                margin: EdgeInsets.only(left: 15),
                width: AppClass().getMqWidth(context) * 0.2,
                color: AppColors().textLight,
              )
            ],
          ),
          _ExperienceContent(),
        ],
      ),
    );
  }
}

class _ExperienceContent extends ConsumerWidget {
  const _ExperienceContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
  
    return Container(
      width: AppClass().getMqWidth(context) * 0.6,
      margin: EdgeInsets.only(top: 30.0, left: 30.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: 'headline',
                    style: GoogleFonts.roboto(
                        color: AppColors().textColor,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 20),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Company Loading',
                        style: GoogleFonts.roboto(
                            color: AppColors().neonColor, fontSize: 20),
                      )
                    ]),
              ),
              Text(
                 'Duration',
                style: TextStyle(
                    color: AppColors().textLight,
                    letterSpacing: 1,
                    height: 1.5,
                    fontSize: 14,
                    fontFamily: 'sfmono'),
              ),
              Points(),
            ],
          )
        ],
      ),
    );
  }
}

class Points extends StatelessWidget {
  const Points({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Icon(
                  Icons.arrow_right,
                  color: AppColors().neonColor,
                  size: 20,
                ),
              ),
              Container(
                width: AppClass().getMqWidth(context) * 0.35,
                child: Text(
                  '',
                  style: TextStyle(
                      color: AppColors().textLight,
                      letterSpacing: 1,
                      height: 1.5,
                      fontSize: 14,
                      fontFamily: 'sfmono'),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Icon(
                  Icons.arrow_right,
                  color: AppColors().neonColor,
                  size: 20,
                ),
              ),
              Container(
                width: AppClass().getMqWidth(context) * 0.35,
                child: Text(
                  '',
                  style: TextStyle(
                      color: AppColors().textLight,
                      letterSpacing: 1,
                      height: 1.5,
                      fontSize: 14,
                      fontFamily: 'sfmono'),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Icon(
                  Icons.arrow_right,
                  color: AppColors().neonColor,
                  size: 20,
                ),
              ),
              Container(
                width: AppClass().getMqWidth(context) * 0.35,
                child: Text(
                  '',
                  style: TextStyle(
                      color: AppColors().textLight,
                      letterSpacing: 1,
                      height: 1.5,
                      fontSize: 14,
                      fontFamily: 'sfmono'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
