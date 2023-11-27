import 'package:flutter/material.dart';
import 'package:my_postfolio/contant/responsive.dart';
import 'package:my_postfolio/contant/text_style.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.screenSize,
    required this.scaffoldKey,
  });

  final Size screenSize;
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ResponsiveWidget.isSmallScreen(context)
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [munuIcon(), const ResumeButton()],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildMenuItem(
                          title: 'Home', onpress: () {}, context: context),
                      buildMenuItem(
                          title: 'About', onpress: () {}, context: context),
                      buildMenuItem(
                          title: 'Services', onpress: () {}, context: context),
                      buildMenuItem(
                          title: 'Contact', onpress: () {}, context: context),
                    ].map((widget) => Flexible(child: widget)).toList(),
                  ),
                ],
              )
            : Row(
                children: [
                  munuIcon(),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildMenuItem(
                            title: 'Home', onpress: () {}, context: context),
                        const SizedBox(
                          width: 10,
                        ),
                        buildMenuItem(
                            title: 'About', onpress: () {}, context: context),
                        const SizedBox(
                          width: 10,
                        ),
                        buildMenuItem(
                            title: 'Services',
                            onpress: () {},
                            context: context),
                        const SizedBox(
                          width: 10,
                        ),
                        buildMenuItem(
                            title: 'Contact', onpress: () {}, context: context),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  const ResumeButton()
                ],
              ),
      ),
    );
  }

  Container munuIcon() {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.teal,
          Colors.transparent,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            )));
  }

  Widget buildMenuItem(
      {required String title,
      required VoidCallback onpress,
      required BuildContext context}) {
    return SizedBox(
      width: ResponsiveWidget.isSmallScreen(context) ? 90 : 100,
      child: TextButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.zero, // Set the padding to zero
          )),
          onPressed: onpress,
          child: Text(
            title,
            style: TextStyle(
                fontSize: ResponsiveWidget.isSmallScreen(context) ? 13 : 16,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          )),
    );
  }
}

class ResumeButton extends StatelessWidget {
  const ResumeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ElevatedButton.styleFrom(
            shadowColor: Colors.black,
            side: const BorderSide(color: Colors.white, width: 2)),
        onPressed: () {},
        child: Text(
          'Resume',
          style: textStyle(
              color: Colors.white, fontsize: 14, fontWeight: FontWeight.w500),
        ));
  }
}
