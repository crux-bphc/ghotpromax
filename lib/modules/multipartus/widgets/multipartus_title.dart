import 'package:flutter/material.dart';
import 'package:lex/widgets/powered_by_crux.dart';

class MultipartusTitle extends StatelessWidget {
  const MultipartusTitle({super.key, this.poweredByCrux = false});

  final bool poweredByCrux;

  @override
  Widget build(BuildContext context) {
    const child = Text.rich(
      TextSpan(
        text: 'MULTI',
        children: [
          TextSpan(
            text: 'PARTUS',
            style: TextStyle(
              color: Color(0xFF434C5D),
            ),
          ),
        ],
      ),
      textWidthBasis: TextWidthBasis.longestLine,
      style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.w700,
        letterSpacing: 8,
        height: 1,
      ),
    );

    return poweredByCrux
        ? const PoweredByCrux(alignment: Alignment.centerRight, child: child)
        : child;
  }
}