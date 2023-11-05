import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';

ThemeData appTheme() => ThemeData(
      primaryColor: fromCssColor('#77CA91'),
      fontFamily: 'Poppins',
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: Color(0xFF424242)),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

// Note: Constant Values
const defaultPadding = EdgeInsets.fromLTRB(24, 24, 24, 24);
const paddingLeftRight = EdgeInsets.only(left: 24, right: 24);
const double padding3XS = 1;
const double padding2XS = 2;
const double paddingXS = 4;
const double paddingS = 6;
const double paddingM = 8;
const double paddingLa = 10;
const double paddingL2 = 12;
const double paddingL = 16;
const double paddingXL = 18;
const double padding2XL = 24;
const double padding3XL = 28;
const double padding4XL = 32;
const double padding5XL = 36;
const double padding6XL = 64;
const double padding7XL = 72;
const double padding8XL = 92;
const double padding9XL = 100;
const double padding10XL = 130;
const double padding11XL = 140;
const double padding12XL = 160;

const double rounded = 16;
const double roundedCardIcon = 30;
const double roundedCard = 32;
const double spaceHeight = 12;
const double spaceHeightXL = 24;
const double spaceWidth = 12;
const double spaceWidthXL = 24;

// Note: Colors
Color colorTextBold = const Color(0xFF212121);
Color colorText = const Color(0xff424242);
Color colorForm = const Color(0xFFf3f3f3);
Color colorCard = const Color(0xFFE7E7E7);
Color primaryColor = const Color.fromARGB(255, 7, 114, 177);
Color blackColor = Colors.black;
Color whiteColor = const Color(0xffFFFFFF);
Color redColor = const Color(0xffFD4F56);
Color greyColor = const Color(0xffB3B5C4);
Color transparentColor = Colors.transparent;
Color inputFieldColor = const Color(0xffF1F0F5);
Color greenColor = Colors.green;
Color brownColor = const Color.fromARGB(255, 139, 114, 3);
Color orangeColor = Colors.orange;
Color tealColor = Colors.teal;
// Color infoTextColor = Colors.yellow;
const accentColor = Color(0xFF53B966);
const headlineColor = Color(0xFF181818);
const textColor = Color(0xFF7d7d7d);
const dangerColor = Color(0xFFDA2525);
const buttonColor = Color(0xff009688);
const infoTextColor = Color.fromARGB(255, 212, 248, 244);
Color? electricityColor = Colors.orange[500];
Color? waterColor = Colors.blue[700];
Color? gasColor = Colors.red;
Color? iplColor = Colors.blue[900];

// update theme.dart
Color backgroundColorgreen = fromCssColor('#77CA91');
Color backgroundColorgreen1 = fromCssColor('#346054');
Color colorGreen2 = fromCssColor('#388E3C');
Color colorGreen3 = fromCssColor('#007E33');
Color colorYellow = fromCssColor('#FFFA99');
Color buttonGrey = fromCssColor('#858585');
Color buttonGrey2 = fromCssColor('#EBEBEB');
Color buttonGrey3 = fromCssColor('#E7E7E7');
Color buttonGrey4 = fromCssColor('#777777');
Color buttonWhite = fromCssColor('#FFFFFF');
Color colordarkBlue = fromCssColor('#0E529D');
Color textdarkBlue = fromCssColor('#3C3B67');
Color colorButtonblue = fromCssColor('#2E3192');
Color colorRed = fromCssColor('#ED1C24');
Color backgroundColorblue = fromCssColor('#D3ECF8');
Color iconColor = fromCssColor('#174D84');
Color dividerColor = fromCssColor('#A3A3A3');
Color blueBackground = fromCssColor('#A1DEF9');
Color textColors = fromCssColor('#666666');
Color textColorsGreen = fromCssColor('#388E3C');

const margin = EdgeInsets.only(bottom: 10);
const margin0 = EdgeInsets.only(top: 20, left: 15, right: 15);
const margin1 = EdgeInsets.only(bottom: 30);

const padding = EdgeInsets.all(15.0);
const padding0 = EdgeInsets.all(18.0);
const padding1 = EdgeInsets.all(15);
const padding2 = EdgeInsets.only(left: 15, top: 15);
const padding3 = EdgeInsets.symmetric(horizontal: 10);
const padding4 = EdgeInsets.only(left: 5);
const padding5 = EdgeInsets.only(top: 10, left: 10, right: 10);

const paddingleftright = EdgeInsets.only(left: 10, right: 10);
const paddingtopleft = EdgeInsets.only(top: 10, left: 10);
const paddingtopleft1 = EdgeInsets.only(top: 35, left: 25);
const paddingtop = EdgeInsets.only(top: 10);
const paddingleft = EdgeInsets.only(left: 10);
const paddingleft1 = EdgeInsets.only(left: 20);
const paddingleft2 = EdgeInsets.only(left: 30);
const paddingright = EdgeInsets.only(right: 10);
const paddingright1 = EdgeInsets.only(right: 20);
const paddingbtm = EdgeInsets.only(bottom: 10);
const paddingbutton = EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5);
const paddingbutton1 = EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5);

const paddingtext = EdgeInsets.only(top: 10, left: 20);
const paddingtext1 = EdgeInsets.only(top: 25, left: 25);
const paddingtext1a = EdgeInsets.only(top: 25, left: 20);
const toplefttext = EdgeInsets.only(left: 25, top: 35);

const paddingicon = EdgeInsets.only(left: 20, top: 10);


Divider divider = Divider(
  thickness: 1,
  color: fromCssColor('#A3A3A3'),
);

Divider divider1 = Divider(
  color: fromCssColor('#E7E7E7'),
  thickness: 3,
);

Divider divider2 = Divider(
  thickness: 1,
  indent: 20,
  endIndent: 20,
  color: fromCssColor('#A3A3A3'),
);

Divider divider3 = Divider(
  thickness: 1,
  indent: 30,
  endIndent: 30,
  color: fromCssColor('#A3A3A3'),
);

Divider divider4 = Divider(
  color: fromCssColor('#A3A3A3'),
  thickness: 1,
);