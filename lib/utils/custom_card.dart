import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color? color;
  final VoidCallback? onPressed, onLongPressed;
  final Widget? child;
  final EdgeInsets? margin;
  final double? radius;

  const CustomCard({
    super.key,
    this.child,
    this.color,
    this.onPressed,
    this.onLongPressed,
    this.margin,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.zero,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius ?? 12.0,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 2.5,
            spreadRadius: 1.0,
          )
        ],
      ),
      child: Material(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(radius ?? 12.0),
        type: MaterialType.button,
        child: InkWell(
          borderRadius: BorderRadius.circular(radius ?? 12.00),
          onTap: onPressed,
          onLongPress: onLongPressed,
          child: child,
        ),
      ),
    );
  }
}

BoxDecoration customBoxDecoration(
    {BorderRadiusGeometry? borderAt,
    Color? shadowColor,
    Color? color,
    Color? borderColor,
    Gradient? gradient,
    double? radius,
    double? borderWidth,
    bool? shadow = false}) {
  return BoxDecoration(
    gradient: gradient,
    color: color ?? Colors.white,
    border: Border.all(
      color: borderColor ?? Colors.transparent,
      width: borderWidth ?? 1.0,
    ),
    borderRadius: borderAt ??
        BorderRadius.circular(
          radius ?? 12.0,
        ),
    boxShadow: [
      if (shadow! == true)
        BoxShadow(
          color: shadowColor ?? Colors.grey,
          blurRadius: 8.5,
          spreadRadius: 1.5,
        )
    ],
  );
}

BoxDecoration customBoxDecorationImage(
    {Color? color,
    Color? borderColor,
    double? radius,
    BoxFit? fit,
    required String imageAsset,
    bool? shadow = false}) {
  return BoxDecoration(
    color: color ?? Colors.white,
    image: DecorationImage(
      image: AssetImage(
        imageAsset,
      ),
      fit: fit ?? BoxFit.cover,
    ),
    border: Border.all(
      color: borderColor ?? Colors.transparent,
      width: 1.0,
    ),
    borderRadius: BorderRadius.circular(
      radius ?? 12.0,
    ),
    boxShadow: [
      if (shadow! == true)
        BoxShadow(
          color: borderColor ?? Colors.grey,
          blurRadius: 5.5,
          spreadRadius: 0.5,
        )
    ],
  );
}

BoxDecoration customBoxDecorationNetworkImage(
    {Color? color,
    Color? borderColor,
    double? radius,
    BoxFit? fit,
    required String imageAsset,
    bool? shadow = false}) {
  return BoxDecoration(
    color: color ?? Colors.white,
    image: DecorationImage(
      image: NetworkImage(
        imageAsset,
      ),
      fit: fit ?? BoxFit.cover,
    ),
    border: Border.all(
      color: borderColor ?? Colors.transparent,
      width: 1.0,
    ),
    borderRadius: BorderRadius.circular(
      radius ?? 12.0,
    ),
    boxShadow: [
      if (shadow! == true)
        BoxShadow(
          color: borderColor ?? Colors.grey,
          blurRadius: 5.5,
          spreadRadius: 0.5,
        )
    ],
  );
}
