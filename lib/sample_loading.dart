import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SampleLoading extends StatefulWidget {
  // const SampleLoading({super.key});

  @override
  State<SampleLoading> createState() => _SampleLoadingState();
}

class _SampleLoadingState extends State<SampleLoading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
      body: Center(
        child: _buildFuture(),
      ),
    );
  }

  Future<int> _getTotal(int max) {
    return compute(_calc, max);
  }

  Widget _buildFuture() {
    return FutureBuilder<int>(
      future: _getTotal(5000000000),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Text("${snapshot.data}");
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}

int _calc(int max) {
  int total = 0;
  for (int index = 0; index < max; index++) {
    total += index;
  }
  return total;
}
