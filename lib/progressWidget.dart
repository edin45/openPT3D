import 'package:flutter/material.dart';

class progressWidget extends StatelessWidget {
  progressWidget(this.width, this.currentStep, this.steps);

  double width;
  int currentStep;
  List<String> steps;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50,
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                  width: width / steps.length,
                  child: Text(
                    steps[index].toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 13.0),
                    overflow: TextOverflow.ellipsis,
                  )),
              Container(
                height: 5.0,
                width: width / steps.length,
                color: currentStep > index
                    ? Colors.green
                    : currentStep == index
                        ? Colors.orange
                        : Colors.grey,
              ),
            ],
          );
        },
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        itemCount: steps.length,
      ),
    );
  }
}
