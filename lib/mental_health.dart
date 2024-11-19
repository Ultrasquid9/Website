import 'package:flutter/material.dart';
import 'package:website/utils.dart';

class MentalHealth extends StatefulWidget {
	const MentalHealth({super.key, required this.title});

	final String title;
	@override State<MentalHealth> createState() => _MentalHealthState();
}

class _MentalHealthState extends State<MentalHealth> {
	@override Widget build(BuildContext context) {
		return createPage(
			context, 
			[
                createTitle("Mental Health"),
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
    "mental health"
    "";
}
