import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/service/post_model.dart';

class ServicePostLearnView extends StatefulWidget {
  const ServicePostLearnView({super.key});

  @override
  State<ServicePostLearnView> createState() => _ServiceLearnViewState();
}

class _ServiceLearnViewState extends State<ServicePostLearnView> {
  List<PostModel>? _items;
  String? name;
  bool _isLoading = false;
  late final Dio _dio;
  final _baseUrl = "https://jsonplaceholder.typicode.com/";

  TextEditingController _titleController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  TextEditingController _userIdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchPostItemsAdvanced() async {
    _changeLoading();
    final response =
        //get sadece post istediği için tüm url yapıştırmadık
        await _dio.get('posts');
    // bu kodu bekle ve suanki yorum satiri olan yere gecme demek

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;

      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name ?? ''),
        actions: [
          _isLoading
              ? const CircularProgressIndicator.adaptive()
              : const SizedBox.shrink()
        ],
      ),
      body: Column(
        children: [
          TextField(
            controller: _titleController,
            decoration: const InputDecoration(labelText: 'Title'),
          ),
          TextField(
            controller: _bodyController,
            decoration: const InputDecoration(labelText: 'Body'),
          ),
          TextField(
            controller: _userIdController,
            keyboardType: TextInputType.number,
            autofillHints: const [AutofillHints.creditCardNumber],
            decoration: const InputDecoration(labelText: 'UserId'),
          ),
          TextButton(onPressed: () {}, child: Text('Send')),
        ],
      ),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key,
    required this.model,
  }) : super(key: key);

  final PostModel? model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 20),
      child: ListTile(
        title: Text(model?.title ?? ''),
        subtitle: Text(model?.body ?? ''),
      ),
    );
  }
}
