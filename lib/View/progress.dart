import 'package:flutter/material.dart';

class ProgressUi extends StatelessWidget {
  final Widget child;
  final bool inAsyncCall;
  final double opacity;

  ProgressUi({
    Key key,
    @required this.child,
    @required this.inAsyncCall,
    this.opacity = 0.3,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = new List<Widget>();
    widgetList.add(child);
    if (inAsyncCall) {
      final modal = new Stack(
        children: [
          new Opacity(
            opacity: opacity,
            child: ModalBarrier(dismissible: false, color: Colors.blue),
          ),
          new Center(child: new CircularProgressIndicator()),
        ],
      );
      widgetList.add(modal);
    }
    return Stack(
      children: widgetList,
    );
  }
}
