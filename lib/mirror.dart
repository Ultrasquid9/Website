import 'package:flutter/material.dart';
import 'package:website/utils.dart';

class Mirror extends StatefulWidget {
	const Mirror({super.key, required this.title});

	final String title;
	@override State<Mirror> createState() => _MirrorState();
}

class _MirrorState extends State<Mirror> {
	@override Widget build(BuildContext context) {
		return createPage(
			context, 
			[
				createTitle("The Mirror"),
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
    "One common piece of symbolism throughout Celeste is the mirror, seen in most "
    "chapters and even playing a central role in Chapter 5. The mirror is used to "
    "show Madeline what she considers the worst aspects about herself, and results "
    "in many of the setbacks she encounters throughout the game. From a cisgender "
    "perspective, the choice of a mirror may seem arbitrary, but it becomes far "
    "more clear why it was picked if viewed from a trans perspective. For trans "
    "people who do not pass as cisgender, they may face increased social stigma, "
    "because society expects them to fit within the gender binary (Villegas et al). "
    "As such, for trans people, their self-image, and the way they are viewed, can "
    "play a significant factor in their mental health, making a mirror be the "
    "perfect fit for the role it plays in the game."

	"";
}
