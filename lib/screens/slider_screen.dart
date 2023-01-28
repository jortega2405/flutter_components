import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnabled ? (value) {
              _sliderValue = value;
              print(value);
              setState(() {});
            }: null
          ),
          // Switch(
          //   value: _sliderEnabled,
          //   onChanged: (value) => setState(() {
          //     _sliderEnabled = value;
          //   }),
          // ),
          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Enable Slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value;
            }),
          ),
          // Checkbox(
          //   value: _sliderEnabled,
          //   onChanged: (value) {
          //     _sliderEnabled = value ?? true;
          //     setState(() {});
          //   },
          // ),
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Enable Slider'),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value ?? true;
            }),
          ),
          const AboutListTile(),
          const SizedBox(height: 100),
          Expanded(
            child: SingleChildScrollView(
              child: Image.asset(
                'assets/png/earth.png',
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          )
        ],
      )
    );
  }
}