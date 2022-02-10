import 'dart:async';

import 'package:bmiapp/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      final value = Provider.of<ProviderManager>(context, listen: false);
      value.increment();
    });
    super.initState();
  }

  int x = 40;

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<ProviderManager>(
      context,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("${data.weight}"),
      ),
    );
  }
}
