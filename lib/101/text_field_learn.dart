import 'package:flutter/material.dart';
import 'package:full_learn/product/language/language_items.dart';

class TextFieldLearnView extends StatefulWidget {
  const TextFieldLearnView({super.key});

  @override
  State<TextFieldLearnView> createState() => _TextFieldLearnViewState();
}

class _TextFieldLearnViewState extends State<TextFieldLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          maxLength: 15,
          keyboardType: TextInputType.emailAddress,
          autofillHints: const [AutofillHints.email],
          buildCounter: (context, {required currentLength, required isFocused, required maxLength}){
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 10,
              width: (MediaQuery.widthOf(context)/maxLength!)*currentLength,
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color: Colors.orange,
              )
              );
          },
          decoration: _inputDecoration().emailInput,
        ),
      ),
    );
  }
}
class _inputDecoration{
 final emailInput =  const InputDecoration(
            prefixIcon: Icon(Icons.mail_outlined),
            border: OutlineInputBorder(),
            labelText: LanguageItems.mailTitle
          );
}