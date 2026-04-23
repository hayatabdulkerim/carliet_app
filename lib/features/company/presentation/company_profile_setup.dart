import 'package:flutter/material.dart';
import '../../../../shared/logo/carliet_logo.dart';
import '../../../../shared/text/app_title.dart';
import '../../../../shared/buttons/filled_btn.dart';
import '../../../../shared/text/auth_subtitel.dart';
import '../../../../shared/input/input_field.dart';
import '../../../shared/input/dropdown_input_field.dart';

class CompanyProfileSetup extends StatefulWidget {
  const CompanyProfileSetup({super.key});

  @override
  State<CompanyProfileSetup> createState() => _CompanyProfileSetupState();
}

class _CompanyProfileSetupState extends State<CompanyProfileSetup> {
  String? selectedIndustry;

  void _onFinishPressed() {
    print("Selected industry: $selectedIndustry");
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 55),
          const Header(),
          SizedBox(height: screenHeight * 0.03),

          const AuthSubtitle(text: 'Complete your profile', fontSize: 24),

          SizedBox(height: screenHeight * 0.007),

          FirstInputs(
            selectedIndustry: selectedIndustry,
            onIndustryChanged: (value) {
              setState(() {
                selectedIndustry = value;
              });
            },
          ),

          SizedBox(height: screenHeight * 0.007),

          const InputField(label: 'Location', hintText: 'Location'),

          const SizedBox(height: 15),

          const InputField(
            label: 'Description',
            hintText: 'Enter company description',
          ),

          const SizedBox(height: 15),

          FilledBtn(text: 'Finish  >', onPressed: _onFinishPressed),
        ],
      ),
    );
  }
}

// _____________________________________________

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16, top: 8),
      child: Align(
        alignment: Alignment.topLeft,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Logo(height: 60),
            SizedBox(width: 8),
            AppTitle(fontSize: 16, textAlign: TextAlign.left),
          ],
        ),
      ),
    );
  }
}

// _____________________________________________

class FirstInputs extends StatelessWidget {
  final String? selectedIndustry;
  final ValueChanged<String?> onIndustryChanged;

  const FirstInputs({
    super.key,
    required this.selectedIndustry,
    required this.onIndustryChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            const InputField(
              label: 'Company Name',
              hintText: 'Enter company name',
              width: 0.40,
            ),

            const SizedBox(height: 5),

            DropdownField(
              label: "Industry",
              hintText: "Select industry",
              items: const [
                "Information Technology (IT)",
                "Healthcare",
                "Finance",
                "Education",
                "Construction",
              ],
              selectedValue: selectedIndustry,
              onChanged: onIndustryChanged,
              width: 0.40,
            ),
          ],
        ),
      ],
    );
  }
}
