import 'package:flutter/material.dart';
import 'package:website/credits.dart';
import 'package:website/home.dart';
import 'package:go_router/go_router.dart';
import 'package:website/utils.dart';

/// Exists exclusively for the purpose of running the website
void main() {
	runApp(const Website());
}

/// The website base class
class Website extends StatelessWidget {
	const Website({super.key});

	@override
	Widget build(BuildContext context) {
		return MaterialApp.router(
			title: "Celeste Project in Flutter",

			theme: ThemeData(
				useMaterial3: true,

				scaffoldBackgroundColor: const Color.fromARGB(255, 48, 52, 70),
			),

			debugShowCheckedModeBanner: false,
			routerConfig: _router,
		);
	}
}

/// The pages available to navigate to on the website
final _router = GoRouter(
	initialLocation: '/',

	routes: [
		GoRoute(
			path: '/',
			pageBuilder: (context, state) => 
				getPageTransition(context, state, const Home(title: "Home"))
		),
		GoRoute(
			path: '/credits',
			pageBuilder: (context, state) => 
				getPageTransition(context, state, const Credits(title: "Home"))
		)
	]
);
