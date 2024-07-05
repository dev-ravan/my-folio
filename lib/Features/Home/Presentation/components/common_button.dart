// ignore_for_file: must_be_immutable

import 'package:my_folio/Utils/exports.dart';

class CommonButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  bool isLoading;
  CommonButton(
      {super.key,
      required this.title,
      required this.onTap,
      this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(18),
            backgroundColor: Theme.of(context).colorScheme.primary),
        onPressed: onTap,
        child: isLoading
            ? CircularProgressIndicator(
                color: Palettes.whiteColor,
              )
            : Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Palettes.whiteColor),
              ));
  }
}
