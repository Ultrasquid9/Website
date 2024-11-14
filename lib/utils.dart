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
FilledButton createButton(VoidCallback onPressed, BuildContext context, IconData icon, String title) {
	var textColor = Color.fromARGB(255, 48, 52, 70);

	return FilledButton.icon(
		style: FilledButton.styleFrom(
			backgroundColor: const Color.fromARGB(255, 202, 158, 230),
		),
		onPressed: onPressed,
		icon: Icon(
			icon,
			color: textColor
		),
		label: Text(title, style: TextStyle(
			color: textColor
		))
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
				Icons.home,
				"Home"
			),
			createButton(
				() => context.go("/background"),
				context,
				Icons.menu_book,
				"Background"
			),
			createButton(
				() => context.go("/mental_health"),
				context,
				Icons.heart_broken,
				"Mental Health"
			),
			createButton(
				() => context.go("/mirror"),
				context,
				Icons.account_box,
				"The Mirror"
			),
			createButton(
				() => context.go("/naysayers"),
				context,
				Icons.edit_off,
				"Naysayers"
			),
			createButton(
				() => context.go("/credits"),
				context,
				Icons.category_rounded,
				"Credits"
			)
		],
	);
}
