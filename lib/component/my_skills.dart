import 'package:flutter/material.dart';
import 'package:my_postfolio/contant/text_style.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator(
      {super.key, required this.percentage, required this.title, this.image});
  final double percentage;
  final String title;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20 / 2),
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: percentage),
        duration: const Duration(seconds: 1),
        builder: (context, value, child) {
          return Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    image!,
                    height: 15,
                    width: 15,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                  Text(
                    '${(value * 100).toInt().toString()}%',
                    style: textStyle(
                        color: Colors.white,
                        fontsize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20 / 2,
              ),
              LinearProgressIndicator(
                value: value,
                backgroundColor: Colors.black,
                color: Colors.amberAccent,
              ),
            ],
          );
        },
      ),
    );
  }
}

class MySKills extends StatelessWidget {
  const MySKills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skills',
            style: TextStyle(color: Colors.white),
          ),
          AnimatedLinearProgressIndicator(
            percentage: 0.7,
            title: 'Flutter',
            image: 'assets/images/flutter.png',
          ),
          AnimatedLinearProgressIndicator(
              percentage: 0.9, title: 'Dart', image: 'assets/images/dart.png'),
          AnimatedLinearProgressIndicator(
              percentage: 0.6,
              title: 'Firebase',
              image: 'assets/images/firebase.png'),
          AnimatedLinearProgressIndicator(
              percentage: 0.85,
              title: 'Sqlite',
              image: 'assets/images/dart.png'),
          AnimatedLinearProgressIndicator(
              percentage: 0.8,
              title: 'Responsive Design',
              image: 'assets/images/flutter.png'),
          AnimatedLinearProgressIndicator(
              percentage: 0.9,
              title: 'Clean Architecture',
              image: 'assets/images/flutter.png'),
          AnimatedLinearProgressIndicator(
              percentage: 0.5, title: 'Bloc', image: 'assets/images/bloc.png'),
          AnimatedLinearProgressIndicator(
              percentage: 0.93, title: 'Getx', image: 'assets/images/dart.png'),
        ],
      ),
    );
  }
}
