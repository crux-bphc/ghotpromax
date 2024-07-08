import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lex/modules/multipartus/widgets/delayed_button.dart';

class DisclaimerDialog extends StatelessWidget {
  const DisclaimerDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: SizedBox(
        child: AlertDialog(
          title: const Text("DISCLAIMER"),
          content: const SizedBox(
            width: 400,
            child: Text(
              _disclaimerText,
              softWrap: true,
            ),
          ),
          titleTextStyle:
              const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          contentTextStyle: const TextStyle(fontSize: 21),
          actions: [
            DelayedButton(
              duration: const Duration(seconds: 3),
              buttonBuilder: (context, onPressed) => OutlinedButton(
                onPressed: onPressed,
                child: const Text("PROCEED"),
              ),
              onPressed: () => context.pop(true),
            ),
          ],
        ),
      ),
    );
  }
}

const _disclaimerText =
    """Multipartus uses and stores your actual Impartus password with encryption 

If your Impartus password is common for other platforms, this is an advisory notice to change your Impartus password before logging in.""";
