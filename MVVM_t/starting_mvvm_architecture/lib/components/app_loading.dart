import 'package:flutter/cupertino.dart';


class AppLoading extends StatelessWidget {
  const AppLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: CupertinoActivityIndicator(
        ),
      ),
    );
  }
}
