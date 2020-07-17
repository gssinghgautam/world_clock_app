import 'package:flutter/material.dart';import 'package:world_clock_app/constants/app_colors.dart';ThemeData get lightTheme {  return ThemeData(      fontFamily: "Aileron",      brightness: Brightness.light,      backgroundColor: lightBackgroundColor,      primaryIconTheme: IconThemeData(        color: iconSelectLightColor,        size: 30.0,      ),      iconTheme: IconThemeData(        color: iconSelectLightColor.withOpacity(0.25),        size: 30.0,      ),      textTheme: TextTheme(        body1: TextStyle(          color: primaryLightTextColor,          fontSize: 14.0,          fontWeight: FontWeight.w400,          letterSpacing: 1.61,        ),        body2: TextStyle(          color: primaryLightTextColor.withOpacity(0.25),          fontSize: 14.0,          fontWeight: FontWeight.w400,          letterSpacing: 1.61,        ),        display1: TextStyle(color: clockHourHandLightColor),        display2: TextStyle(color: clockMinuteHandLightColor),        display3: TextStyle(color: clockSecondHandLightColor),        subhead: TextStyle(          color: cityTextColor,          fontSize: 30.0,          fontWeight: FontWeight.w600,        ),        title: TextStyle(          color: primaryLightTextColor,          fontSize: 47.0,          fontWeight: FontWeight.w600,        ),      ),      primaryTextTheme: TextTheme(        title: TextStyle(          color: primaryLightTextColor,          fontWeight: FontWeight.w400,          fontSize: 26.0,        ),        subtitle: TextStyle(          color: primaryLightTextColor,          fontWeight: FontWeight.w400,          fontSize: 20.0,        ),        body1: TextStyle(            color: primaryLightGreyColor,            fontWeight: FontWeight.w400,            fontSize: 20.0,            textBaseline: TextBaseline.alphabetic),      ));}ThemeData get darkTheme {  return ThemeData(    fontFamily: "Aileron",    brightness: Brightness.dark,    backgroundColor: darkBackgroundColor,    unselectedWidgetColor: iconUnSelectedColor,    primaryIconTheme: IconThemeData(      color: iconSelectDarkLight,      size: 30.0,    ),    iconTheme: IconThemeData(      color: iconSelectDarkLight.withOpacity(0.25),      size: 30.0,    ),    textTheme: TextTheme(      body1: TextStyle(        color: primaryDarkTextColor,        fontSize: 14.0,        fontWeight: FontWeight.w400,        letterSpacing: 1.61,      ),      body2: TextStyle(        color: primaryDarkTextColor.withOpacity(0.25),        fontSize: 14.0,        fontWeight: FontWeight.w400,        letterSpacing: 1.61,      ),      display1: TextStyle(color: clockHourHandDarkColor),      display2: TextStyle(color: clockMinuteHandDarkColor),      display3: TextStyle(color: clockSecondHandDarkColor),      subhead: TextStyle(        color: cityTextColor,        fontSize: 30.0,        fontWeight: FontWeight.w600,      ),      title: TextStyle(        color: primaryDarkTextColor,        fontSize: 47.0,        fontWeight: FontWeight.w600,      ),    ),    primaryTextTheme: TextTheme(      title: TextStyle(        color: primaryDarkTextColor,        fontWeight: FontWeight.w400,        fontSize: 26.0,      ),      subtitle: TextStyle(        color: primaryDarkTextColor,        fontWeight: FontWeight.w400,        fontSize: 20.0,      ),      body1: TextStyle(        color: primaryLightGreyColor,        fontWeight: FontWeight.w400,        fontSize: 20.0,        textBaseline: TextBaseline.alphabetic,      ),    ),  );}