import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';

//? p1 - converter para StatefulWidget
//? p2 - importar o widget AdaptiveScaffold
//? p3 - criar destinations (rotas)
//? p4 - gerenciar o estado da rota
//? p5 - criar HomeMediumBody e SettingsMediumBody
//? p6 - criar switch expression para apresentar o body de acordo com a rota
//? p7 - criar bodies de acordo com os breakpoints (6 no total)
//? p8 - criar propriedades smallBody e LargeBody
//? p9 - customizar breakpoints com as propriedades
//? p10 - mostrar o useDrawer: false para usar BottomNavigationBar
//? p11 - mostrar o appBar, somente com useDrawer: true
//? p12 - mostrar appBarBreakpoint, independe do drawer
//? p13 - criar secondary body
//? p14 - criar switch expression para apresentar o secondary body de acordo com a rota
//? p15 - ocultar smallSecondaryBody com AdaptiveScaffold.emptyBuilder (body vazio)
//? p16 - mostrar bodyOrientation
//? p17 - mostrar bodyRatio
//? p18 - mostrar internalAnimations (secondaryBody)
//? p19 - mostrar transitionDuration

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final List<NavigationDestination> destinations = [
    const NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
    const NavigationDestination(icon: Icon(Icons.settings), label: 'Settings')
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AdaptiveScaffold(
        destinations: destinations,
        onSelectedIndexChange: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        selectedIndex: selectedIndex,
        smallBreakpoint: Breakpoints.small,
        mediumBreakpoint: Breakpoints.medium,
        largeBreakpoint: Breakpoints.large,
        smallBody: (context) => switch (selectedIndex) {
          0 => const HomeSmallBody(),
          _ => const SettingsSmallBody(),
        },
        // smallSecondaryBody: (context) => switch (selectedIndex) {
        //   0 => const HomeSmallSecondaryBody(),
        //   _ => const SettingsSmallSecondaryBody(),
        // },
        smallSecondaryBody: AdaptiveScaffold.emptyBuilder,
        body: (context) => switch (selectedIndex) {
          0 => const HomeMediumBody(),
          _ => const SettingsMediumBody(),
        },
        secondaryBody: (context) => switch (selectedIndex) {
          0 => const HomeMediumSecondaryBody(),
          _ => const SettingsMediumSecondaryBody(),
        },
        largeBody: (context) => switch (selectedIndex) {
          0 => const HomeLargeBody(),
          _ => const SettingsLargeBody(),
        },
        largeSecondaryBody: (context) => switch (selectedIndex) {
          0 => const HomeLargeSecondaryBody(),
          _ => const SettingsLargeSecondaryBody(),
        },
        appBar: AppBar(title: const Text('Adaptive Scaffold')),
        // appBarBreakpoint: Breakpoints.smallAndUp,
        useDrawer: false,
        bodyOrientation: Axis.horizontal,
        bodyRatio: 0.3,
        // internalAnimations: false,
        transitionDuration: const Duration(seconds: 2),
      ),
    );
  }
}

class HomeSmallBody extends StatelessWidget {
  const HomeSmallBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Home Small Body'));
  }
}

class HomeMediumBody extends StatelessWidget {
  const HomeMediumBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Home Medium Body'));
  }
}

class HomeLargeBody extends StatelessWidget {
  const HomeLargeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Home Large Body'));
  }
}

class HomeSmallSecondaryBody extends StatelessWidget {
  const HomeSmallSecondaryBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Home Small Secondary Body'));
  }
}

class HomeMediumSecondaryBody extends StatelessWidget {
  const HomeMediumSecondaryBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Home Medium Secondary Body'));
  }
}

class HomeLargeSecondaryBody extends StatelessWidget {
  const HomeLargeSecondaryBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Home Large Secondary Body'));
  }
}

class SettingsSmallBody extends StatelessWidget {
  const SettingsSmallBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Settings Small Body'));
  }
}

class SettingsSmallSecondaryBody extends StatelessWidget {
  const SettingsSmallSecondaryBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Settings Small Secondary Body'));
  }
}

class SettingsMediumBody extends StatelessWidget {
  const SettingsMediumBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Settings Medium Body'));
  }
}

class SettingsMediumSecondaryBody extends StatelessWidget {
  const SettingsMediumSecondaryBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Settings Medium Secondary Body'));
  }
}

class SettingsLargeBody extends StatelessWidget {
  const SettingsLargeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Settings Large Body'));
  }
}

class SettingsLargeSecondaryBody extends StatelessWidget {
  const SettingsLargeSecondaryBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Settings Large Secondary Body'));
  }
}
