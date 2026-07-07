import 'package:flutter/material.dart';
import 'package:full_learn/core/random_image.dart';

class ListTileLearnView extends StatelessWidget {
  const ListTileLearnView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List",style: Theme.of(context).textTheme.headlineMedium,),),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListTile(
                  onTap: () {},
                  onLongPress: () {},
                  title: const Text("Hesaplarım"),
                  subtitle: const Text("Vadesiz Hesaplarınızı Görüntüleyin"),
                  leading: const Icon(Icons.monetization_on_outlined),
                  trailing: const Icon(Icons.chevron_right_outlined),
                ),
              ),
            ),
        
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListTile(
                  onTap: () {},
                  onLongPress: () {},
                  title: const Text("Kartlarım"),
                  subtitle: const Text("Kredi Kartlarınızı Görüntüleyin"),
                  leading: const Icon(Icons.credit_card_outlined),
                  trailing: const Icon(Icons.chevron_right_outlined),
                ),
              ),
            ),
        
            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListTile(
                  dense: true,
                  onTap: () {},
                  onLongPress: () {},
                  title: const RandomImage() ,
                  subtitle: const Text("Kredi Kartlarınızı Görüntüleyin"),
                  leading: const Icon(Icons.credit_card_outlined),
                  trailing: const Icon(Icons.chevron_right_outlined),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}