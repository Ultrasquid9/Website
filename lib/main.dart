import 'package:flutter/material.dart';
import 'package:website/background.dart';
import 'package:website/credits.dart';
import 'package:website/home.dart';
import 'package:go_router/go_router.dart';
import 'package:website/mental_health.dart';
import 'package:website/mirror.dart';
import 'package:website/naysayers.dart';
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
			path: '/background',
			pageBuilder: (context, state) => 
				getPageTransition(context, state, const Background(title: "Background"))
		),
		GoRoute(
			path: '/mental_health',
			pageBuilder: (context, state) => 
				getPageTransition(context, state, const MentalHealth(title: "Mental Health"))
		),
		GoRoute(
			path: '/mirror',
			pageBuilder: (context, state) => 
				getPageTransition(context, state, const Mirror(title: "The Mirror"))
		),
		GoRoute(
			path: '/naysayers',
			pageBuilder: (context, state) => 
				getPageTransition(context, state, const Naysayers(title: "Naysayers"))
		),
		GoRoute(
			path: '/credits',
			pageBuilder: (context, state) => 
				getPageTransition(context, state, const Credits(title: "Credits"))
		)
	]
);
