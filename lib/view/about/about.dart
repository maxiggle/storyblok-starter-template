// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:html';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/controller/cubit/about_cubit.dart';
import '../../controller/generalController.dart';
import '../../resource/app_class.dart';
import '../../resource/colors.dart';

class AboutWeb extends ConsumerStatefulWidget {
  const AboutWeb({Key? key}) : super(key: key);

  @override
  ConsumerState<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends ConsumerState<AboutWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: AppClass().getMqWidth(context) * 0.03,
          right: AppClass().getMqWidth(context) * 0.03),
      padding: EdgeInsets.only(bottom: 40),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                    text: "01.",
                    style: TextStyle(
                        color: AppColors().neonColor,
                        fontSize: 20,
                        fontFamily: 'sfmono'),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' About Me',
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
          Row(
            children: [_AboutContent(), _ProfilePicture()],
          )
        ],
      ),
    );
  }
}

class _AboutContent extends ConsumerWidget {
  const _AboutContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(
      aboutProvider.select((value) => value.aboutContent),
    );

    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Text(
              data?.aboutMe ?? 'About me loading...',
              style: GoogleFonts.roboto(
                color: AppColors().textLight,
                letterSpacing: 1,
                height: 1.5,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfilePicture extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var data = ref.watch(aboutProvider);
    final imageUrl = data.aboutContent?.myImage?.filename;
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: AppClass().getMqWidth(context) * 0.22,
                height: AppClass().getMqWidth(context) * 0.22,
                margin: EdgeInsets.only(top: 10, left: 10),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    border:
                        Border.all(color: AppColors().neonColor, width: 1.5)),
              ),
              Container(
                width: AppClass().getMqWidth(context) * 0.22,
                height: AppClass().getMqWidth(context) * 0.22,
                child: imageUrl != null ? MyImage(imageUrl: imageUrl) : null,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MyImage extends StatelessWidget {
  final String imageUrl;
  const MyImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      imageUrl,
      (int _) => ImageElement()
        ..src = imageUrl
        ..style.width = '100%'
        ..style.height = '100%',
    );
      return HtmlElementView(
      viewType: imageUrl,
    );
  
  }
}
