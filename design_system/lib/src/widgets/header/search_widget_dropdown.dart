import 'package:flutter/material.dart';

class SearchWidgetDropDown extends StatelessWidget {
  final Function(String) onSubmitted;
  final TextEditingController textController;
  final void Function()? onTap;

  const SearchWidgetDropDown({
    super.key,
    required this.onSubmitted,
    required this.textController,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(24),
      child: TextField(
        controller: textController,
        onSubmitted: onSubmitted,
        style: theme.textTheme.overline!
            .copyWith(fontSize: 15, color: Colors.black),
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            color: Colors.black,
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {
              onSubmitted(textController.text);
            },
          ),
          border: InputBorder.none,
          hintText: 'Search City',
          contentPadding: const EdgeInsets.all(14),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: theme.indicatorColor,
              width: 0.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: theme.indicatorColor,
              width: 1.5,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: theme.errorColor,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: theme.errorColor,
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
