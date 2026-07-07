import 'package:flutter/material.dart';

class IndicatorLearnView extends StatelessWidget {
  const IndicatorLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          CenteredCircularProgressWhite()
        ],
      ),

      body: const Column(children: [
          LinearProgressIndicator(
            color: Colors.black,
          ),
         
          SizedBox(height: 150,),

          CenteredCircularProgress()
        ],
      )
    );
  }
}

class CenteredCircularProgress extends StatelessWidget {
  const CenteredCircularProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator();
  }
}

class CenteredCircularProgressWhite extends StatelessWidget {
  const CenteredCircularProgressWhite({
    super.key,
  });
  final Color whiteColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: whiteColor,
    );
  }
}