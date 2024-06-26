import 'package:flutter/material.dart';
import 'package:my_folio/Features/About/Presentation/components/personal_info.dart';
import 'package:my_folio/Utils/exports.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: PersonalInfo(),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 3.5,
        )
      ],
    );
  }
}
