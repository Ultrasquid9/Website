import 'package:flutter/material.dart';
import 'package:website/utils.dart';

class Credits extends StatefulWidget {
	const Credits({super.key, required this.title});

	final String title;
	@override State<Credits> createState() => _CreditsState();
}

class _CreditsState extends State<Credits> {
	@override Widget build(BuildContext context) {
		return createPage(
			context, 
			[
                createTitle("Credits"),
				SelectableText(
					text(), 
					style: getTextStyle(),
				)
			]
		);
	}
}

String text() {
    return
    "\nThorson, Maddy. “Is Madeline Canonically Trans?” Medium, Medium, 16 Feb. 2023, maddythorson.medium.com/is-madeline-canonically-trans-4277ece02e40."
    "";
}