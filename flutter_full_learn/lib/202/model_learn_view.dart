import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PostModel8(body: 'sa');
  // var yerine PostModel8 yazabilirsin

  @override
  void initState() {
    super.initState();

    final user1 = PostModel1()
      ..userId = 1
      ..body = 'vb';
    user1.body = 'hello';

    final user2 = PostModel2(1, 2, 'title', 'body');
    user2.body = 'es';

    final user3 = PostModel3(1, 2, 'title', 'body');
    // user3.body = 'a'; --> final oldugu icin error!

    final user4 = PostModel4(userId: 1, id: 1, title: 'title', body: 'body');
    // user4.body = 'se'; --> final oldugu icin error!

    final user5 = PostModel5(userId: 1, id: 2, title: 'title', body: 'body');
    // private varaible atadigimiz icin ctrl+space yaptigimizda fazla goremiyoruz!
    // user5.userId gorunebildi cunku encapsulation yaptik ancak digerlerini gorunmez!
    user5.userId;

    final user6 = PostModel6(userId: 1, id: 1, title: 'title', body: 'body');
    // user6.userId --> error

    final user7 = PostModel7();

    // servisten data cekiyorsak en mantikli yontem bu
    final user8 = PostModel8(body: 'a');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          //user9 = PostModel8(title: 'On Pressed');
          user9 = user9.copyWith(title: 'es');
          user9.updateBody('emir');
        });
      }),
      appBar: AppBar(
        title: Text(user9.title ?? 'Not have any data'),
        //user9.body yazmayi da dene
      ),
    );
  }
}
