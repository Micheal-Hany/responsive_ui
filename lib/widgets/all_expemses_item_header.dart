import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    Key? key,
    required this.image,
    required this.isSelected,
  }) : super(key: key);

  final String image;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color:
                isSelected ? const Color(0xff60BEF3) : const Color(0xffFAFAFA),
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: isSelected
                  ? const ColorFilter.mode(Colors.white, BlendMode.srcIn)
                  : const ColorFilter.mode(Color(0xff60BEF3), BlendMode.srcIn),
            ),
          ),
        ),
        const Spacer(),
        Expanded(
          child: Icon(
            Icons.arrow_forward_ios_rounded,
            color:
                !isSelected ? const Color(0xff064061) : const Color(0xffFAFAFA),
          ),
        ),
      ],
    );
  }
}
