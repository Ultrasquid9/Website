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
	"\n"
	"\nInderbinen, Marc, et al. \"Relationship of internalized transnegativity and protective factors with depression, anxiety, non-suicidal "
	"self-injury and suicidal tendency in trans populations: A systematic review.\" Frontiers in psychiatry 12 (2021): 636513."
	"\n"
	"\nCarmel, Tamar C., and Laura Erickson-Schroth. \"Mental health and the transgender population.\" Journal of psychosocial "
	"nursing and mental health services 54.12 (2016): 44-48."
    "\n"
    "\nVillegas Simón, Isabel, Juan Jose Sanchez Soriano, and Rafael Ventura. \"‘If you don’t “pass” as cis, you don’t exist’. "
    "The trans audience's reproofs of ‘Cis Gaze’and transnormativity in TV series.\" European Journal of Communication 39.1 (2024): 22-36."
	
	"";
}
