import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Creates a page with the provided widgets
Scaffold createPage(BuildContext context, List<Widget> components) {
	return Scaffold(
		appBar: getBar(context),
		body: Center(
			child: ListView(
				padding: EdgeInsets.only(
					left: 128, 
					right: 128, 
					top: 128, 
					bottom: 128
				),
				children: components,	
			)
		)
	);
}

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
		title: Text("Celeste Project in Flutter", style: getTextStyle()),
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
