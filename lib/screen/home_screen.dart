import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final Color color;

  HomeScreen({required this.color, Key? key}) : super(key: key) {
    print("widget Constructor 실행!");
  }

  @override
  _HomeScreenState createState() {
    print("createState 실행!");
    return _HomeScreenState();
  }
  // State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int number = 0;
  @override
  void initState() {
    super.initState();
    print("initState 실행");
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("didChangeDependencies 실행");
  }

  @override
  void deactivate() {
    print("deactivate 실행");
    super.deactivate();
  }

  @override
  void dispose() {
    print("dispose 실행");
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    print("didUpdateWidget 실행");
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("build 실행");
    return GestureDetector(
      onTap: () {
        print("click!");
        setState(() {
          number++;
        });
      },
      child: Container(
        width: 50.0,
        height: 50.0,
        color: widget.color,
        child: Center(
          child: Text(
            number.toString(),
          ),
        ),
      ),
    );
  }
}

// class _HomeScreen extends StatelessWidget {
//   final Color color;

//   const _HomeScreen({
//     required this.color,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 50.0,
//       height: 50.0,
//       color: color,
//     );
//   }
// }
