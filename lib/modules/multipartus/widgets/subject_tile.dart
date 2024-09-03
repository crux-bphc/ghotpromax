import 'package:flutter/material.dart';
import 'package:lex/modules/multipartus/models/subject.dart';
import 'package:lex/modules/multipartus/widgets/grid_button.dart';

class SubjectTile extends StatelessWidget {
  const SubjectTile({
    super.key,
    required this.subject,
    required this.onPressed,
  });

  final Subject subject;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GridButton(
      onPressed: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Text(
                subject.prettyCode.toUpperCase(),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const Spacer(),
              Icon(
                Icons.favorite,
                size: 22,
                color: Theme.of(context).colorScheme.primary,
              ),
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft + const Alignment(0, -0.2),
              child: Text(
                subject.name.toUpperCase().trim(),
                style: const TextStyle(
                  fontSize: 26,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                maxLines: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
