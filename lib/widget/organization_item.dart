import 'package:at_tareeq/config/small_text.dart';
import 'package:flutter/material.dart';

class OrganizationItem extends StatelessWidget {
  OrganizationItem({Key? key,
    this.image = 'assets/central_mosque.png',
    required this.organizationName,
    required this.onTap,
  }) : super(key: key);

  final String image;
  final String organizationName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image(fit: BoxFit.fill,
              width: 120,
              height: 150,
              image: AssetImage(image),
            ),
          ),
          SizedBox(height: 2,),
          SmallText(text: organizationName, fontSize: 14,),
        ],
      ),
    );
  }
}