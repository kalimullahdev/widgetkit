import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MaterialDividerCard extends StatefulWidget {
  const MaterialDividerCard({super.key});

  @override
  State<MaterialDividerCard> createState() => _MaterialDividerCardState();
}

class _MaterialDividerCardState extends State<MaterialDividerCard> {
  int avaliablityTimesActiveIndex = 2;

  final double rating = 4.5;
  final int numberOfReviews = 413;
  final List<String> avaliablityTimes = ["5:30PM", "7:30PM", "8:00PM", "9:00PM", "5:30PM"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1502472584811-0a2f2feb8968?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1740&q=80")),
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Card title',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      RatingBarIndicator(
                        rating: rating,
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 15.0,
                      ),
                      const SizedBox(width: 16),
                      Text(
                        "${rating.toString()} (${numberOfReviews.toString()})",
                        style: TextStyle(
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    r'$ • Italian, Cafe',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Small plates, salads & sandwiches an intimate setting with 12 indoor seats plus patio seating.',
                    style: TextStyle(
                      color: Theme.of(context).hintColor,
                      fontSize: 16,
                    ),
                  ),
                  const Divider(
                    height: 40,
                    thickness: 1,
                  ),
                  const Text(
                    "Tonight's availability",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: avaliablityTimes.length,
                      itemBuilder: (BuildContext context, int index) {
                        final bool isSelected = avaliablityTimesActiveIndex == index;
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                avaliablityTimesActiveIndex = index;
                              });
                            },
                            child: Chip(
                              label: Text(
                                avaliablityTimes[index],
                                style: TextStyle(color: isSelected ? Colors.blue.shade700 : null),
                              ),
                              backgroundColor: isSelected ? Colors.blue.shade50 : null,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('RESERVE'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
