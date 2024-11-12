import 'package:flutter/material.dart';
import 'package:website/credits.dart';
import 'package:website/home.dart';
import 'package:go_router/go_router.dart';

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
			title: "Website",

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

/// Gets a fancy transition for different pages of the website
CustomTransitionPage getPageTransition(BuildContext context, GoRouterState state, Widget child) {
	return CustomTransitionPage(
		child: child, 

		transitionsBuilder: (context, animation, secondaryAnimation, child) {
			return FadeTransition(
				opacity: CurveTween(curve: Curves.easeInCirc).animate(animation),
				child: child,
			);
		}
	);
}

/// Gets the style for text
TextStyle getTextStyle() {
	return const TextStyle(
		color: Color.fromARGB(255, 198, 208, 245),
	);
}

/// Creates a button
ElevatedButton createButton(VoidCallback onPressed, BuildContext context, String title) {
	return ElevatedButton(
		style: ElevatedButton.styleFrom(
			backgroundColor: const Color.fromARGB(255, 41, 44, 60),
		),
		onPressed: onPressed,
		child: Text(title, style: getTextStyle())
	);
}

/// Gets the navigation bar at the top of the website
AppBar getBar(BuildContext context) {
	return AppBar(
		
		backgroundColor: const Color.fromARGB(255, 35, 38, 52),
		title: Text("Inkblot Games", style: getTextStyle()),
		actions: <Widget>[
			createButton(
				() => context.go("/",),
				context,
				"Home"
			),
			createButton(
				() => context.go("/credits"),
				context,
				"Credits"
			)
		],
	);
}
