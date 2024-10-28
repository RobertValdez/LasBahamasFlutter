import 'package:flutter/material.dart';
import 'scroll_behavior.dart';
import 'card_image.dart';

// ignore: must_be_immutable
class CardImageList extends StatelessWidget {
	List<String> items = [
		'assets/img/lasterrenas.jpg',
    'assets/img/Brooklyn.jpg',
    'assets/img/lasteresitas.png',
    'assets/img/pinguinos.jpg'
	];
		
	@override
	Widget build(BuildContext context) {
		final ScrollController controller = ScrollController();

		return SizedBox(
			height: 350.0,
			child: ScrollConfiguration(
				behavior: MyCustomScrollBehavior(),
				child: ListView.builder(
					padding: EdgeInsets.all(25.0),
					scrollDirection: Axis.horizontal,
					controller: controller,
			          itemCount: items.length,
			          itemBuilder: (context, index) {
			            return CardImage(items[index]);
			          },
		        )
			)
		);
	}
}