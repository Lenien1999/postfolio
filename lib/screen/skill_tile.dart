import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_postfolio/model/skills_model.dart';

import '../contant/responsive.dart';

class BuildSkillsList extends StatelessWidget {
  const BuildSkillsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: ResponsiveWidget.isMediumScreen(context)
            ? MediaQuery.of(context).size.width * 0.8
            : (ResponsiveWidget.isSmallScreen(context)
                ? MediaQuery.of(context).size.width * 0.8
                : MediaQuery.of(context).size.width * 0.7),
        child: GridView.custom(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverWovenGridDelegate.count(
            crossAxisCount: ResponsiveWidget.isSmallScreen(context)
                ? 2
                : (ResponsiveWidget.isMediumScreen(context) ? 3 : 4),
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            pattern: [
              const WovenGridTile(1),
              const WovenGridTile(
                5 / 5,
                crossAxisRatio: 1,
                alignment: AlignmentDirectional.centerEnd,
              ),
            ],
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            childCount: skillsList.length,
            (context, index) {
              final skills = skillsList[index];
              return AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                child: Card(
                  color: Colors.teal,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          skills.icon,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        skills.title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.tealAccent,
                          fontSize: ResponsiveWidget.isSmallScreen(context)
                              ? 12
                              : (ResponsiveWidget.isMediumScreen(context)
                                  ? 13
                                  : 14),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        skills.subtitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Divider(
                        thickness: 0.5,
                        indent: 20,
                        endIndent: 20,
                        color: Colors.tealAccent.shade100,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );

    //  Center(
    //   child: SizedBox(
    //     width: ResponsiveWidget.isMediumScreen(context)
    //         ? MediaQuery.of(context).size.width * 0.6
    //         : (ResponsiveWidget.isSmallScreen(context)
    //             ? MediaQuery.of(context).size.width * 0.5
    //             : MediaQuery.of(context).size.width * 0.6),
    //     child: GridView.builder(
    //       shrinkWrap: true,
    //       physics: const NeverScrollableScrollPhysics(),
    //       itemCount: skillsList.length,
    //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //         crossAxisCount: ResponsiveWidget.isMediumScreen(context)
    //             ? 2
    //             : (ResponsiveWidget.isSmallScreen(context) ? 1 : 3),
    //         mainAxisExtent: ResponsiveWidget.isMediumScreen(context)
    //             ? 180
    //             : (ResponsiveWidget.isSmallScreen(context) ? 200 : 150),
    //         mainAxisSpacing: 15,
    //         crossAxisSpacing: 20,
    //       ),
    //       itemBuilder: (context, index) {
    //         final skills = skillsList[index];
    //         return AnimatedContainer(
    //           duration: const Duration(milliseconds: 500),
    //           child: Card(
    //             color: Colors.teal,
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
    //                 IconButton(
    //                   onPressed: () {},
    //                   icon: Icon(
    //                     skills.icon,
    //                     size: 40,
    //                     color: Colors.white,
    //                   ),
    //                 ),
    //                 Text(
    //                   skills.title,
    //                   style: TextStyle(
    //                     color: Colors.tealAccent,
    //                     fontSize: ResponsiveWidget.isSmallScreen(context)
    //                         ? 12
    //                         : (ResponsiveWidget.isMediumScreen(context)
    //                             ? 13
    //                             : 14),
    //                     fontWeight: FontWeight.bold,
    //                   ),
    //                 ),
    //                 Text(
    //                   skills.subtitle,
    //                   style: const TextStyle(
    //                     color: Colors.white,
    //                     fontSize: 12,
    //                     fontWeight: FontWeight.w500,
    //                   ),
    //                 ),
    //                 const SizedBox(height: 10),
    //                 Divider(
    //                   thickness: 0.5,
    //                   indent: 20,
    //                   endIndent: 20,
    //                   color: Colors.tealAccent.shade100,
    //                 ),
    //               ],
    //             ),
    //           ),
    //         );
    //       },
    //     ),
    //   ),
    // );
  }
}
