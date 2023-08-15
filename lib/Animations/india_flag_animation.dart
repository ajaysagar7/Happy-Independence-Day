import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class IndiaFlagAnimationScreen extends StatefulWidget {
  const IndiaFlagAnimationScreen({Key? key}) : super(key: key);

  @override
  State<IndiaFlagAnimationScreen> createState() => _IndiaFlagAnimationScreenState();
}

class _IndiaFlagAnimationScreenState extends State<IndiaFlagAnimationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 60,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 60,
                width: double.infinity,
                color: Colors.white,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(
                        "assets/chakra.png",
                      ),
                      maxRadius: 50,
                    )
                        .animate()
                        .slideX(
                            begin: 0.6, curve: Curves.fastEaseInToSlowEaseOut)
                        .then(delay: 600.milliseconds)
                        .animate(
                            onPlay: (controller) => controller.loop(
                                period: const Duration(milliseconds: 1200)))
                        .rotate()
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Container(
                  height: 60,
                  color: Colors.green,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //! text-widget
              Text(
                "Happy",
                style: GoogleFonts.kalam(
                    fontSize: 38,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold),
              )
                  .animate()
                  .shake()
                  .fadeIn(delay: 1300.milliseconds)
                  .shimmer(color: Colors.white),

              Text(
                "Independence",
                style: GoogleFonts.kalam(
                    fontSize: 38,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ).animate().moveX().fadeIn(delay: 1400.milliseconds),

              Text(
                "Day",
                style: GoogleFonts.kalam(
                    fontSize: 38,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              )
                  .animate()
                  .moveX()
                  .fadeIn(delay: 1500.milliseconds)
                  .shimmer(color: Colors.white)
                  .then(),

              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  "assets/logo.png",
                  height: 60,
                ),
              ).animate().shake().slideX(begin: -0.4)
            ]
                .animate(
                  interval: 300.milliseconds,
                )
                .fade(duration: 400.milliseconds, curve: Curves.linear)
                .moveX()
                .slideY(
                    begin: 0.04,
                    end: 0,
                    curve: Curves.linear,
                    duration: const Duration(milliseconds: 600)),
          ),
        ),
      ),
    );
  }
}
