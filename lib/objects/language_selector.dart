import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class LanguageSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Locale>(
      color: Colors.black,
      icon: Row(
        children: [
          Icon(Icons.language,color:Colors.white38,),
          SizedBox(width: 6),
          Icon(Icons.keyboard_arrow_down,color:Colors.white ,),
        ],
      ),
      onSelected: (Locale locale) {
        context.setLocale(locale);
      },
      itemBuilder: (BuildContext context) => [
        PopupMenuItem(
          value: Locale('en', 'US'),
          child: Row(
            children: [
              Text('🇺🇸', style: TextStyle(fontSize: 20)),
              SizedBox(width: 8),
              Text('English',style:TextStyle(color:Colors.white) ,),
            ],
          ),
        ),
        PopupMenuItem(
          value: Locale('ar', 'EG'),
          child: Row(
            children: [
              Text('🇸🇦', style: TextStyle(fontSize: 20)),
              SizedBox(width: 8),
              Text('العربية',style:TextStyle(color:Colors.white) ,),
            ],
          ),
        ),
      ],
    );
  }
}
