import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../controller/generalController.dart';
import '../../resource/app_class.dart';
import '../../resource/colors.dart';

class LeftPane extends ConsumerStatefulWidget {
  const LeftPane({Key? key}) : super(key: key);

  @override
  ConsumerState<LeftPane> createState() => _LeftPaneState();
}

class _LeftPaneState extends ConsumerState<LeftPane> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Column(
          children: [
            Expanded(
                flex: 5,
                child: Container(
                  child: Consumer(builder: (context, ref, child) {
                    String val = ref.watch(hoverProvider);
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: AppClass().getMqHeight(context) * 0.07,
                            child: InkWell(
                              onTap: () async {
                                await launchUrl(
                                    Uri.parse("https://github.com/maxiggle"));
                              },
                              onHover: (bol) {
                                if (bol) {
                                  ref.read(hoverProvider.notifier).state =
                                      "git";
                                } else {
                                  ref.read(hoverProvider.notifier).state = "";
                                }
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                    bottom: val == "git" ? 5.0 : 0),
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: SvgPicture.asset('assets/svg/github.svg',
                                    color: val == "git"
                                        ? AppColors().neonColor
                                        : AppColors().textColor,
                                    width: 22),
                              ),
                            ),
                          ),
                          Container(
                            height: AppClass().getMqHeight(context) * 0.07,
                            child: InkWell(
                              onTap: () async {
                                await launchUrl(Uri.parse(
                                    "https://www.linkedin.com/in/godwin-alexander-ekainu-6169411b8"));
                              },
                              onHover: (bol) {
                                if (bol) {
                                  ref.read(hoverProvider.notifier).state =
                                      "linkedIn";
                                } else {
                                  ref.read(hoverProvider.notifier).state = "";
                                }
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                    bottom: val == "linkedIn" ? 5.0 : 0),
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: SvgPicture.asset(
                                    'assets/svg/linkedIn.svg',
                                    color: val == "linkedIn"
                                        ? AppColors().neonColor
                                        : AppColors().textColor,
                                    width: 22),
                              ),
                            ),
                          ),
                          Container(
                            height: AppClass().getMqHeight(context) * 0.07,
                            child: InkWell(
                              onTap: () async {
                                await launchUrl(Uri.parse(
                                    "https://twitter.com/godwinAekainu"));
                              },
                              onHover: (bol) {
                                if (bol) {
                                  ref.read(hoverProvider.notifier).state =
                                      "twitter";
                                } else {
                                  ref.read(hoverProvider.notifier).state = "";
                                }
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                    bottom: val == "twitter" ? 5.0 : 0),
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: SvgPicture.asset(
                                    'assets/svg/twitter.svg',
                                    color: val == "twitter"
                                        ? AppColors().neonColor
                                        : AppColors().textColor,
                                    width: 22),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                )),
            Expanded(
                child: Container(
              width: 1,
              color: AppColors().textColor,
            ))
          ],
        ));
  }
}
