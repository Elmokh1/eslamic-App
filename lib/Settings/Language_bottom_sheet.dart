import 'package:flutter/material.dart';





class LanguageBottomSheet extends StatefulWidget {

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: Column(
        children: [
          GetSelectedItem("English"),
          SizedBox(
            height: 50,
          ),
          GetUnSelectedItem("عربي"),
        ],
      ),
    );
  }

  Widget GetSelectedItem(String title){
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Theme.of(context).accentColor)),
            Icon(Icons.check, color: Theme.of(context).accentColor),
          ],
        ),
      ),
    );
  }
  Widget GetUnSelectedItem(String title){
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }

}
