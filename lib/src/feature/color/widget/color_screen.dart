import 'package:color_button_app/src/common/localization/generated/app_localizations.dart';
import 'package:color_button_app/src/common/util/color.dart';
import 'package:flutter/material.dart';

class ColorScreen extends StatefulWidget {
  const ColorScreen({super.key});

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  Color _color = RandomColor.next();

  void _updateColor() {
    setState(() {
      _color = RandomColor.next();
    });
  }

  @override
  Widget build(BuildContext context) {
    final AppLocalizations localizations = AppLocalizations.of(context)!;
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        decoration: BoxDecoration(color: _color),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: _updateColor,
            child: Center(
              child: Text(
                localizations.heyThere,
                style: TextStyle(
                  color: _color.computeLuminance() > 0.5
                      ? Colors.black
                      : Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
