import 'dart:async';

import 'package:flutter/material.dart';

import '../wrapper_menu/views/wrapper_menu_view.dart';

class WelcomScreen2 extends StatelessWidget {
  const WelcomScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DelayedTransition(),
    );
  }
}

class DelayedTransition extends StatefulWidget {
  const DelayedTransition({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DelayedTransitionState createState() => _DelayedTransitionState();
}

class _DelayedTransitionState extends State<DelayedTransition> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const WrapperMenuView()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: KoshKel(),
    );
  }

  // Text();
}

class KoshKel extends StatelessWidget {
  const KoshKel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/osh-7.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: const Center(
        child: Text(
          "Ош шаарына кош келиниздер!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 70,
          ),
        ),
      ),
    );
  }
}
