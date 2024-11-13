import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:macedon/router/navigator_router.dart';
import 'package:macedon/screen/auth/login_screen.dart';
import 'package:macedon/screen/onboarding/onboardig_content_list.dart';
import 'package:macedon/static/color.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentindex = 0;
  late PageController _controller;
  @override
  void initState() {
    // TODO: implement initState
    // Provider.of<MapLoadViewmodel>(context, listen: false)
    //     .locationEnabledndPermission(context);
    checkScreen();
    _controller = PageController(
      initialPage: currentindex,
    );
    super.initState();
    firsttimeScreen();
  }

  firsttimeScreen() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onScreen', true);
  }

  checkScreen() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var isLogin = preferences.getString('userID');
    //   // print(state.namedLocation("/login"));
    //   // Allow navigation to login without being redirected back to '/on'
    //   if (isLogin == null && state.path == '/login') {
    //     return null;
    //   }

    //   // Redirect based on login status
    if (isLogin != null) {
      context.pushReplacement('/home', extra: {'id': "0"});
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  controller: _controller,
                  physics: ClampingScrollPhysics(),
                  // physics: const NeverScrollableScrollPhysics(),
                  allowImplicitScrolling: false,
                  pageSnapping: true,
                  itemCount: onboardingContent.length,
                  onPageChanged: (int index) {
                    setState(() {
                      currentindex = index;
                    });
                  },
                  itemBuilder: (_, i) {
                    // i = currentindex;

                    return Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                            flex: 3,
                            child: Image.asset(
                              onboardingContent[i].image ?? "",
                              fit: BoxFit.fill,
                            )),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  onboardingContent[i].title ?? "",
                                  style:
                                      Theme.of(context).textTheme.displayMedium,
                                ),
                                Text(
                                  onboardingContent[i].title2 ?? "",
                                  style:
                                      Theme.of(context).textTheme.displayLarge,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(4),
                                  child: Text(
                                    onboardingContent[i].description ?? "",
                                    // textAlign: TextAlign.center,
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            // padding: EdgeInsets.only(
                            //     left: 8,
                            //     right: 8,
                            //     top: 2,
                            //     bottom: 2),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            minimumSize: Size.zero),
                        onPressed: () {
                          // context.go('/login');
                          if (currentindex == 0) {
                            context.pushReplacement('/login');
                            //  navigation(context, LoginScreen());
                            // context.go('/home', extra: {'id': "0"});
                            // context.go('/home');
                            // Navigator.pushReplacement(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => LognScreen()));
                          } else
                            _controller.previousPage(
                                duration: Duration(microseconds: 100),
                                curve: Curves.elasticIn);
                        },
                        child: Text(
                          "${currentindex == 0 ? "Skip" : "Previous"}",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(onboardingContent.length,
                          (index) => buildDot(index, context)),
                    ),
                    Container(
                      height: 40,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            // padding: EdgeInsets.only(
                            //     left: 8,
                            //     right: 8,
                            //     top: 2,
                            //     bottom: 2),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            minimumSize: Size.zero),
                        onPressed: () {
                          // context.go('/login');
                          if (currentindex == onboardingContent.length - 1) {
                            context.push('/login');
                            // context.go('/home', extra: {'id': "0"});
                            // context.push('/home');
                            // navigation(context, LoginScreen());
                          } else
                            _controller.nextPage(
                                duration: Duration(microseconds: 100),
                                curve: Curves.elasticOut);
                        },
                        child: Text(
                          "${currentindex == onboardingContent.length - 1 ? "Continue" : "Next"}",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDot(inde, BuildContext context) {
    return InkWell(
      onTap: () {
        _controller.jumpToPage(inde);
        // currentindex = inde;
        setState(() {});
      },
      child: Container(
        height: 10,
        width: currentindex == inde ? 25 : 10,
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colo.black,
        ),
      ),
    );
  }
}
