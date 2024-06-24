import 'package:flutter/material.dart';
import 'package:pr_4_departure/screens/dohascreen/provider/languageProvider.dart';
import 'package:provider/provider.dart';

class DohaScreen extends StatelessWidget {
  const DohaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.sunny)),
        title: Text(
            (Provider.of<LanguageProvider>(context).language == 'English')
                ? 'couplets of guru tegh bahadur ji'
                : (Provider.of<LanguageProvider>(context).language == 'Hindi')
                    ? "गुरु तेग बहादुर जी के दोहे"
                    : (Provider.of<LanguageProvider>(context).language ==
                            'Gujarati')
                        ? 'ગુરુ તેગ બહાદુર જી ના કંઠ'
                        : (Provider.of<LanguageProvider>(context).language ==
                                'Sanskrit')
                            ? 'गुरु तेग बहादुर जी के दोहे'
                            : 'गुरु तेग बहादुर जी के दोहे'),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => <PopupMenuEntry>[
              PopupMenuItem(value: 'English', child: Text('English')),
              PopupMenuItem(value: 'Hindi', child: Text('Hindi')),
              PopupMenuItem(value: 'Gujarati', child: Text('Gujarati')),
              PopupMenuItem(value: 'Sanskrit', child: Text('Sanskrit')),
            ],
            onSelected: (value) {
              if (value == 'English') {
                Provider.of<LanguageProvider>(context, listen: false)
                    .changeLanguage('English');
              } else if (value == 'Hindi') {
                Provider.of<LanguageProvider>(context, listen: false)
                    .changeLanguage('Hindi');
              } else if (value == 'Gujarati') {
                Provider.of<LanguageProvider>(context, listen: false)
                    .changeLanguage('Gujarati');
              } else if (value == 'Sanskrit') {
                Provider.of<LanguageProvider>(context, listen: false)
                    .changeLanguage('Sanskrit');
              }
            },
          )
        ],
        elevation: 25,
      ),
    );
  }
}
