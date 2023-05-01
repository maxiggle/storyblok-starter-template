import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:portfolio/controller/cubit/intro_cubit.dart';

import 'package:scroll_to_index/scroll_to_index.dart';        
import '../../resource/app_class.dart';
import '../../resource/colors.dart';

// ignore: must_be_immutable
class IntroWeb extends ConsumerStatefulWidget {
  IntroWeb(this.aScrollController);
  AutoScrollController aScrollController;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _IntroWebState();
}

class _IntroWebState extends ConsumerState<IntroWeb> {
  @override
  Widget build(BuildContext context) {
    final introText = ref.watch(portfolioHomeContentProvider
        .select((value) => value.introContent));
    return Container(
      color: Colors.transparent,
      margin: EdgeInsets.only(
          left: AppClass().getMqWidth(context) * 0.01,
          top: AppClass().getMqHeight(context) * 0.1),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 50),
                child: Text(
                  'headline1',
                  style: TextStyle(
                      color: AppColors().neonColor,
                      fontSize: 18,
                      fontFamily: 'sfmono'),
                ),
              ),
              MyName( ),
              Platforms(),
              WorkSummary(),
              CallToAction(widget: widget)
            ],
          ),
        ],
      ),
    );
  }
}

class MyName extends StatelessWidget {
  const MyName({
    Key? key,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        'myName',
        style: GoogleFonts.robotoSlab(
          color: AppColors().textColor,
          fontWeight: FontWeight.bold,
          letterSpacing: 3,
          fontSize: 55,
        ),
      ),
    );
  }
}

class Platforms extends StatelessWidget {
  const Platforms({
    Key? key,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppClass().getMqWidth(context) -
          (AppClass().getMqWidth(context) * 0.23),
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Text(
          'headline3',
          style: GoogleFonts.robotoSlab(
            color: AppColors().textLight,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
            fontSize: 55,
          ),
        ),
      ),
    );
  }
}

class WorkSummary extends StatelessWidget {
  const WorkSummary({
    Key? key,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Container(
        width: AppClass().getMqWidth(context) * 0.45,
        child: RichText(
          text: TextSpan(
            text: 'myDescription',
            style: GoogleFonts.roboto(
              color: AppColors().textLight,
              letterSpacing: 1,
              height: 1.5,
              fontSize: 18,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'currentOrgName',
                style: GoogleFonts.roboto(
                  color: AppColors().neonColor,
                  letterSpacing: 1,
                  height: 1.5,
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CallToAction extends StatelessWidget {
  const CallToAction({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final IntroWeb widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50, bottom: 70),
      child: InkWell(
        onTap: () {
          widget.aScrollController
              .scrollToIndex(1, preferPosition: AutoScrollPosition.begin);
        },
        child: Container(
          height: AppClass().getMqHeight(context) * 0.09,
          width: AppClass().getMqWidth(context) * 0.2,
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(3.0)),
              border: Border.all(color: AppColors().neonColor, width: 1.5)),
          child: Center(
            child: Text('Check Out My Work!',
                style: TextStyle(
                    color: AppColors().neonColor,
                    fontSize: 13,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'sfmono')),
          ),
        ),
      ),
    );
  }
}
