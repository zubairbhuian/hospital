import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hospital/screens/loging_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  hideStatusBar() {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.green,
    ));
  }

  @override
  void initState() {
    hideStatusBar();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Flexible(
            child: IntroductionScreen(
              showNextButton: false,
              showDoneButton: false,
              dotsDecorator: const DotsDecorator(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  size: Size(10.0, 10.0),
                  color: Colors.green,
                  activeSize: Size(22.0, 10)),
              pages: [
                PageViewModel(
                    title: 'Care For Home',
                    bodyWidget:
                        const Text('Help our family members back home.'),
                    image: const Image(
                      height: 400,
                      image: AssetImage(
                        'images/intro_1.png',
                      ),
                    )),
                PageViewModel(
                    title: 'Care For Home',
                    bodyWidget:
                        const Text('Help our family members back home.'),
                    image: const Image(
                      height: 400,
                      image: AssetImage(
                        'images/intro_1.png',
                      ),
                    )),
                PageViewModel(
                    title: 'Care For Home',
                    bodyWidget:
                        const Text('Help our family members back home.'),
                    image: const Image(
                      height: 700,
                      image: AssetImage(
                        'images/intro_1.png',
                      ),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 100, bottom: 20, left: 20, right: 20),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      maximumSize: const Size(double.maxFinite, 100.0)),
                  onPressed: () {
                    Get.off(() => const LoginScreen());
                  },
                  child: const Text('Get Started')),
            ),
          ),
        ],
      )),
    );
  }
}
