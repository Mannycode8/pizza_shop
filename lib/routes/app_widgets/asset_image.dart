import 'package:flutter/material.dart';

class EcAssetsImage extends StatelessWidget {
  const EcAssetsImage(
      {super.key,
      required this.imgAssets,
      this.width,
      this.height,
      this.maxHeight,
      this.maxWidth,
      this.fit,
      this.scale});
  final String imgAssets;
  final double? width;
  final double? height;
  final double? maxHeight;
  final double? maxWidth;
  final double? scale;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? MediaQuery.of(context).size.height,
      width: width ?? double.infinity,
      constraints: BoxConstraints(
        maxWidth: maxWidth ?? MediaQuery.of(context).size.width,
        maxHeight: maxHeight ?? MediaQuery.of(context).size.height,
      ),
      child: Image.asset(
        imgAssets,
        fit: fit ?? BoxFit.contain,
        width: width,
        height: height,
        scale: scale ?? 1.0,
      ),
    );
  }
}
