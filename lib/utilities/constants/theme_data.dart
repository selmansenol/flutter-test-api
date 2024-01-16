part of 'package:flutter_api/main.dart';

final ThemeData _themeData = ThemeData(
  brightness: Brightness.light,
  primaryColor: ThemeColors.blue,
  primaryColorLight: ThemeColors.blue,
  primaryColorDark: ThemeColors.blue,
  canvasColor: ThemeColors.white,
  scaffoldBackgroundColor: ThemeColors.offWhite,
  cardColor: ThemeColors.white,
  dividerColor: ThemeColors.grayTertiary,
  highlightColor: const Color(0x40cccccc),
  splashColor: const Color(0x40cccccc),
  unselectedWidgetColor: const Color(0xb3ffffff),
  disabledColor: const Color(0x62ffffff),
  secondaryHeaderColor: ThemeColors.white,
  dialogBackgroundColor: ThemeColors.white,
  indicatorColor: ThemeColors.blue,
  hintColor: ThemeColors.silverGray,
  textTheme: const TextTheme(
      displaySmall: TextStyle(
          color: ThemeColors.grayTertiary,
          fontSize: 12,
          fontWeight: FontWeight.w300),
      labelMedium: TextStyle(
        color: ThemeColors.white,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: TextStyle(
          color: ThemeColors.silverGray,
          fontSize: 12,
          fontWeight: FontWeight.w300),
      bodyMedium: TextStyle(
          color: ThemeColors.lightGrey,
          fontSize: 14,
          fontWeight: FontWeight.w400),
      titleMedium: TextStyle(
          color: ThemeColors.silverGray,
          fontSize: 16,
          fontWeight: FontWeight.w300),
      headlineMedium: TextStyle(
          color: ThemeColors.grayTertiary,
          fontSize: 20,
          fontWeight: FontWeight.bold)),
  appBarTheme: const AppBarTheme(
    backgroundColor: ThemeColors.backGroundColor,
    foregroundColor: ThemeColors.white,
    iconTheme: IconThemeData(color: ThemeColors.nightBlueDark),
    systemOverlayStyle: SystemUiOverlayStyle.light,
    elevation: 0.0,
    shadowColor: Colors.transparent,
    centerTitle: true,
    toolbarHeight: AppConstants.toolbarHeight,
  ),
  bottomAppBarTheme: const BottomAppBarTheme(
    color: ThemeColors.white,
    elevation: 0.0,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: ThemeColors.primary,
    unselectedItemColor: ThemeColors.lightGrey,
    selectedIconTheme: IconThemeData(
      size: 28.0,
    ),
    unselectedIconTheme: IconThemeData(
      size: 28.0,
    ),
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    type: BottomNavigationBarType.fixed,
  ),
);
/////////////////////////////////////////////////////////////
///DarkTheme
//////////////////////////////////////////////////////////////
ThemeData buildDarkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    brightness: Brightness.light,
    primaryColor: ThemeColors.blue.shade800,
    primaryColorLight: ThemeColors.blue.shade800,
    primaryColorDark: ThemeColors.blue.shade800,
    canvasColor: ThemeColors.gray.shade800,
    scaffoldBackgroundColor: ThemeColors.gray.shade800,
    cardColor: ThemeColors.gray.shade800,
    dividerColor: ThemeColors.grayTertiary,
    highlightColor: const Color(0x40cccccc),
    splashColor: const Color(0x40cccccc),
    unselectedWidgetColor: const Color(0xb3ffffff),
    disabledColor: const Color(0x62ffffff),
    secondaryHeaderColor: ThemeColors.primary,
    dialogBackgroundColor: ThemeColors.primary,
    indicatorColor: ThemeColors.blue.shade800,
    hintColor: ThemeColors.offWhite,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        color: ThemeColors.white,
        fontFamily: 'Modernist',
        fontWeight: FontWeight.w400,
        fontSize: 16.0,
        height: 24.0 / 16.0,
      ),
      bodyMedium: TextStyle(
        color: ThemeColors.lightGrey,
        fontFamily: 'Modernist',
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
        height: 20.0 / 14.0,
      ),
      displayLarge: TextStyle(
        color: ThemeColors.lightGrey,
        fontFamily: 'Modernist',
        fontWeight: FontWeight.w600,
        fontSize: 48.0,
        height: 56.0 / 48.0,
      ),
      displayMedium: TextStyle(
        color: ThemeColors.lightGrey,
        fontFamily: 'Modernist',
        fontWeight: FontWeight.w500,
        fontSize: 48.0,
        height: 56.0 / 48.0,
      ),
      displaySmall: TextStyle(
        color: ThemeColors.lightGrey,
        fontFamily: 'Modernist',
        fontWeight: FontWeight.w500,
        fontSize: 36.0,
      ),
      headlineMedium: TextStyle(
        color: ThemeColors.lightGrey,
        fontFamily: 'Modernist',
        fontWeight: FontWeight.w500,
        fontSize: 24.0,
      ),
      headlineSmall: TextStyle(
        color: ThemeColors.lightGrey,
        fontFamily: 'Modernist',
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
        height: 28.0 / 20.0,
      ),
      titleLarge: TextStyle(
        color: ThemeColors.white,
        fontFamily: 'Modernist',
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
        height: 24.0 / 18.0,
      ),
      labelSmall: TextStyle(
        color: ThemeColors.white,
        fontFamily: 'Modernist',
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
        letterSpacing: 1.1,
      ),
      bodySmall: TextStyle(
        color: ThemeColors.lightGrey,
        fontFamily: 'Modernist',
        fontWeight: FontWeight.w400,
        fontSize: 12.0,
        height: 16.0 / 12.0,
      ),
      labelLarge: TextStyle(
        fontFamily: 'Modernist',
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
      ),
      titleMedium: TextStyle(
        color: ThemeColors.white,
        fontFamily: 'Modernist',
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
        height: 24.0 / 16.0,
      ),
      titleSmall: TextStyle(
        color: ThemeColors.white,
        fontFamily: 'Modernist',
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        height: 20.0 / 14.0,
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: ThemeColors.blue,
      foregroundColor: ThemeColors.white,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      elevation: 0.0,
      shadowColor: Colors.transparent,
      centerTitle: true,
      toolbarHeight: AppConstants.toolbarHeight,
      titleTextStyle: TextStyle(
        fontFamily: 'Modernist',
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
      ),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: ThemeColors.white,
      elevation: 0.0,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: ThemeColors.primary,
      unselectedItemColor: ThemeColors.lightGrey,
      selectedIconTheme: IconThemeData(
        size: 28.0,
      ),
      unselectedIconTheme: IconThemeData(
        size: 28.0,
      ),
      selectedLabelStyle: TextStyle(
        fontFamily: 'Modernist',
        fontSize: 10.0,
        fontWeight: FontWeight.w500,
        height: 2.5,
        leadingDistribution: TextLeadingDistribution.proportional,
      ),
      unselectedLabelStyle: TextStyle(
        fontFamily: 'Modernist',
        fontSize: 10.0,
        fontWeight: FontWeight.w500,
        height: 2.5,
        leadingDistribution: TextLeadingDistribution.proportional,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      type: BottomNavigationBarType.fixed,
    ),
    tabBarTheme: const TabBarTheme(
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: ThemeColors.white,
      labelStyle: TextStyle(
        fontFamily: 'Modernist',
        fontWeight: FontWeight.w500,
      ),
      labelPadding: EdgeInsets.symmetric(horizontal: 12.0),
      unselectedLabelColor: ThemeColors.lightGrey,
      unselectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w500,
      ),
    ),
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.normal,
      minWidth: 88.0,
      height: AppConstants.heightButton,
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      shape: StadiumBorder(
        side: BorderSide(
          color: ThemeColors.blue,
          width: AppConstants.borderWidth,
          style: BorderStyle.solid,
        ),
      ),
      alignedDropdown: false,
      buttonColor: ThemeColors.blue,
      disabledColor: ThemeColors.grayTertiary,
      highlightColor: Color(0x29ffffff),
      splashColor: Color(0x1fffffff),
      focusColor: Color(0x1fffffff),
      hoverColor: Color(0x0affffff),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ThemeColors.red,
        alignment: Alignment.center,
        textStyle: const TextStyle(
          color: ThemeColors.white,
          fontFamily: 'Modernist',
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
        ),
        side: const BorderSide(
          color: ThemeColors.blue,
          width: AppConstants.borderWidth,
          style: BorderStyle.none,
        ),
        elevation: 0.0,
        shadowColor: Colors.transparent,
        minimumSize: const Size(0.0, AppConstants.heightButton),
        shape: const StadiumBorder(),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: ThemeColors.blue,
        alignment: Alignment.center,
        textStyle: const TextStyle(
          fontFamily: 'Modernist',
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
        ),
        side: const BorderSide(
          color: ThemeColors.blue,
          width: AppConstants.borderWidth,
          style: BorderStyle.solid,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        shadowColor: Colors.transparent,
        minimumSize: const Size(0.0, AppConstants.heightButton),
        shape: const StadiumBorder(),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        alignment: Alignment.center,
        foregroundColor: MaterialStateProperty.all(ThemeColors.blue),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            fontFamily: 'Modernist',
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
          ),
        ),
        minimumSize: MaterialStateProperty.all(
          const Size(0.0, AppConstants.heightButton),
        ),
        shape: MaterialStateProperty.all(
          const StadiumBorder(),
        ),
        padding: MaterialStateProperty.all(EdgeInsets.zero),
        visualDensity: VisualDensity.compact,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(
        fontFamily: 'Modernist',
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        color: ThemeColors.lightGrey,
        letterSpacing: 1.1,
      ),
      helperStyle: TextStyle(
        fontFamily: 'Modernist',
        color: ThemeColors.lightGrey,
      ),
      hintStyle: TextStyle(
        fontFamily: 'Modernist',
        color: ThemeColors.silverGray,
        fontWeight: FontWeight.w400,
      ),
      errorStyle: TextStyle(
        fontFamily: 'Modernist',
        color: ThemeColors.blue,
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
      errorMaxLines: null,
      isDense: false,
      contentPadding: EdgeInsets.symmetric(
        vertical: 4.0,
      ),
      isCollapsed: false,
      filled: false,
      fillColor: Colors.transparent,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      alignLabelWithHint: true,
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: ThemeColors.blue,
          width: 1.0,
          style: BorderStyle.solid,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: ThemeColors.lightGrey,
          width: 1.0,
          style: BorderStyle.solid,
        ),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: ThemeColors.blue,
          width: 1.0,
          style: BorderStyle.solid,
        ),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: ThemeColors.lightGrey,
          width: 1.0,
          style: BorderStyle.solid,
        ),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: ThemeColors.lightGrey,
          width: 1.0,
          style: BorderStyle.solid,
        ),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(
          color: ThemeColors.lightGrey,
          width: 1.0,
          style: BorderStyle.none,
        ),
      ),
      suffixIconColor: ThemeColors.white,
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(ThemeColors.white),
      fillColor: MaterialStateProperty.all(ThemeColors.white),
      side: const BorderSide(
        color: ThemeColors.silverGray,
        width: AppConstants.borderWidth,
        style: BorderStyle.solid,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3.0),
      ),
    ),
    sliderTheme: const SliderThemeData(
      activeTrackColor: null,
      inactiveTrackColor: null,
      disabledActiveTrackColor: null,
      disabledInactiveTrackColor: null,
      activeTickMarkColor: null,
      inactiveTickMarkColor: null,
      disabledActiveTickMarkColor: null,
      disabledInactiveTickMarkColor: null,
      thumbColor: null,
      disabledThumbColor: null,
      thumbShape: RoundSliderThumbShape(),
      overlayColor: null,
      valueIndicatorColor: null,
      valueIndicatorShape: PaddleSliderValueIndicatorShape(),
      showValueIndicator: ShowValueIndicator.onlyForContinuous,
      valueIndicatorTextStyle: TextStyle(
        color: ThemeColors.white,
        fontFamily: 'Modernist',
        fontSize: null,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
      ),
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: ThemeColors.red,
      brightness: Brightness.dark,
      deleteIconColor: ThemeColors.white,
      disabledColor: ThemeColors.grayTertiary,
      labelPadding: EdgeInsets.symmetric(
        horizontal: 12.0,
      ),
      labelStyle: TextStyle(
        color: ThemeColors.white,
        fontFamily: 'Modernist',
      ),
      padding: EdgeInsets.all(4.0),
      secondaryLabelStyle: TextStyle(
        color: Color(0x3dffffff),
        fontFamily: 'Modernist',
      ),
      secondarySelectedColor: Color(0x3d212121),
      selectedColor: Color(0x3dffffff),
      shape: StadiumBorder(
        side: BorderSide(
          color: Color(0x3dffffff),
          width: 0.0,
          style: BorderStyle.none,
        ),
      ),
    ),
    cardTheme: const CardTheme(
      color: ThemeColors.red,
      shadowColor: Color(0x3dffffff),
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            8.0,
          ),
        ),
      ),
    ),
    dialogTheme: const DialogTheme(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.transparent,
          width: 0.0,
          style: BorderStyle.none,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            8.0,
          ),
        ),
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            8.0,
          ),
        ),
      ),
    ),
    listTileTheme: ListTileThemeData(
      iconColor: ThemeColors.blue.shade800,
    ),
    dividerTheme: const DividerThemeData(
      color: ThemeColors.offWhite,
      thickness: 1.0,
      space: 24.0,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: ThemeColors.blue.shade800,
      // selectionColor: ThemeColors.teal.shade300,
      // selectionHandleColor: ThemeColors.teal,
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return ThemeColors.blue.shade800;
        }
        return null;
      }),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return ThemeColors.blue.shade800;
        }
        return null;
      }),
      trackColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return null;
        }
        if (states.contains(MaterialState.selected)) {
          return ThemeColors.blue.shade800;
        }
        return null;
      }),
    ),
    colorScheme: ColorScheme(
      primary: ThemeColors.blue.shade800,
      secondary: ThemeColors.white,
      surface: ThemeColors.primary,
      background: ThemeColors.gray.shade800,
      error: ThemeColors.blue,
      onPrimary: ThemeColors.primary,
      onSecondary: ThemeColors.primary,
      onSurface: ThemeColors.primary,
      onBackground: ThemeColors.primary,
      onError: ThemeColors.white,
      brightness: Brightness.light,
    )
        .copyWith(background: ThemeColors.primary)
        .copyWith(error: ThemeColors.blue.shade800),
  );
}
