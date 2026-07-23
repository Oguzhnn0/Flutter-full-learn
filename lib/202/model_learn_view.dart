import 'package:flutter/material.dart';
import 'package:full_learn/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {

  var user9 = PostModel8(body: "UN");

  @override
  void initState(){
    super.initState();
  
    final user1 = PostModel();

    user1.userId = 1;
    user1.id = 1001;
    user1.title = "hello user1";
    user1.body = "OA" ;

    final user2 = PostModel2(2, 1002, "hello user2", "SK");
    
    user2.body = "AK";

    final user3 = PostModel3(3, 1003, "hello user3", "KK");

    //---final olduğu için değişiklik yapılamaz
    //user3.id=1000;


    final user4 = PostModel4(userId: 4, id: 1004, title: 'hello user4', body: 'VB');

    //---final olduğu için değişiklik yapılamaz
    //user4.userId = 0;


    final user5 = PostModel5(userId: 5, id: 1005, title: 'hello user5', body: 'TS');

    //---local veriable olduğu için verilere geri ulaşılamaz(belli şartlarda ulaşılması sağlanabilir)
    //user5.


    final user6 = PostModel6(userId: 6, id: 1006, title: 'hello user6', body: 'KT');

    
    //---local veriable olduğu için verilere geri ulaşılamaz(belli şartlarda ulaşılması sağlanabilir)
    //user6.


    final user7 = PostModel7();

    //service
    final user8 = PostModel8(body: "UN");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          user9 =user9.copyWith(title: "hello user9");
          user9.updateBody("MKA");
        });
      }),
      appBar: AppBar(title: Text(user9.title ?? "Null"),),
    );
  }
}