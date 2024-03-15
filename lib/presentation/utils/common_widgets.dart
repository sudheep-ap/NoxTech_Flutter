//To add shimmer effect while loading data
import 'package:flutter/material.dart';
import 'constants.dart';

// class ShimmerEffect extends StatelessWidget {
//   final Widget child;
//   const ShimmerEffect({Key? key, required this.child}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Shimmer.fromColors(
//         baseColor: AppColors.kGreyColor,
//         highlightColor: AppColors.kLightGreyColor,
//         period: const Duration(milliseconds: 1500),
//         child: child);
//   }
// }

// Widget kLoadingIndicator = Center(

//     child: SpinKitDualRing(

//   //SpinKitFadingCube SpinKitDualRing SpinKitWave SpinKitThreeBounce SpinKitFadingCircle

//   //SpinKitDualRing SpinKitThreeBounce

//   color: kMainGreenColor,

//   // size: 50.0,

// ));

// Linear Progress Indicator

Widget kLinearLoadingIndicator = LinearProgressIndicator(
    borderRadius: BorderRadius.circular(2),
    color: AppColors.kBlueColor,
    backgroundColor: AppColors.kLightYellow);

const Widget kSizedBox10 = SizedBox(height: 10);
const Widget kSizedBox15 = SizedBox(height: 15);
const Widget kSizedBox20 = SizedBox(height: 20);
const Widget kSizedBox25 = SizedBox(height: 25);
const Widget kSizedBox30 = SizedBox(height: 30);
const Widget kSizedBox35 = SizedBox(height: 35);
const Widget kSizedBox40 = SizedBox(height: 40);
const Widget kSizedBox45 = SizedBox(height: 45);
const Widget kSizedBox50 = SizedBox(height: 50);
const Widget kSizedBox55 = SizedBox(height: 55);
const Widget kSizedBox60 = SizedBox(height: 60);
const Widget kSizedBox65 = SizedBox(height: 65);
const Widget kSizedBox70 = SizedBox(height: 70);
const Widget kSizedBox75 = SizedBox(height: 75);
const Widget kSizedBox80 = SizedBox(height: 80);
const Widget kSizedBox85 = SizedBox(height: 85);
const Widget kSizedBox90 = SizedBox(height: 90);
const Widget kSizedBox95 = SizedBox(height: 95);
const Widget kSizedBox100 = SizedBox(height: 100);

Widget skeletonContainer(height, width) {
  return Container(
    color: AppColors.kGreyColor,
    height: height,
    width: width,
  );
}

class DottedDivider extends StatelessWidget {
  final Color color;
  final double height;
  final double thickness;
  final double gap;

  const DottedDivider({
    super.key,
    this.color = AppColors.kDottedDividerColor,
    this.height = 1,
    this.thickness = 3,
    this.gap = 2,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = constraints.maxWidth;
        final int numberOfDots = (width / (thickness + gap)).floor();

        return Row(
          children: List.generate(
            numberOfDots,
            (index) {
              return Container(
                width: thickness,
                height: height,
                color: color,
                margin: EdgeInsets.only(right: gap),
              );
            },
          ),
        );
      },
    );
  }
}
