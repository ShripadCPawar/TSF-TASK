import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton(
      {this.child,
      this.color,
      this.borderRadius: 20.0,
      this.height: 50.0,
      this.onPressed})
      : assert(borderRadius != null);
  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          )),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              // if (states.contains(MaterialState.))
              return color;
              // return null; // Use the component's default.
            },
          ),
        ),
        /* style: ElevatedButton.styleFrom(shape: new RoundedRectangleBorder(
                     borderRadius: new BorderRadius.circular(30.0),
          )
          ),*/

        child: child,
      ),
    );
  }
}
