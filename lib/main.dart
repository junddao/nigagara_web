import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minimal/provider/router/router_provider.async_notifier.dart';
import 'package:minimal/size_config.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routerProvider);
    return MaterialApp.router(
      theme: ThemeData(
        fontFamily: 'Noto_Serif_KR',
      ),
      routerConfig: router,
      // Wrapping the app with a builder method makes breakpoints
      // accessible throughout the widget tree.
      // builder: (context, child) => ResponsiveBreakpoints.builder(
      //   child: child!,
      //   breakpoints: [
      //     const Breakpoint(start: 0, end: 450, name: MOBILE),
      //     const Breakpoint(start: 451, end: 800, name: TABLET),
      //     const Breakpoint(start: 801, end: 1920, name: DESKTOP),
      //     const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
      //   ],
      // ),

      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        SizeConfig().init(context);
        return child!;
      },
    );
  }
}
