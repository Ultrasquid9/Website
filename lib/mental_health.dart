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
/* Trans people are known to experiences higher levels of mental health disorders than cisgender people (Mental Health Trans Population). As stated by the research paper Mental Health and the Transgender Population, “[Trans people] are disproportionately affected by discrimination, harassment, and violence, leading to mental health disparities, such as increase rates of depression, substance abuse disorders, self-injury, and SI/SA”, several of which are stated in the game to have been experienced by Madeline (She reveals in a conversation with Theo that she has struggled with alcohol abuse and depression). However, this paper also states that transgender people are highly resilient, and able to survive through their hostile environments, which reflects the game’s main theme of overcoming insurmountable obstacles. 
 */