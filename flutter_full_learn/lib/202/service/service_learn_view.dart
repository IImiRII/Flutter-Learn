import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/service/post_model.dart';

class ServiceLearnView extends StatefulWidget {
  const ServiceLearnView({super.key});

  @override
  State<ServiceLearnView> createState() => _ServiceLearnViewState();
}

class _ServiceLearnViewState extends State<ServiceLearnView> {
  List<PostModel>? _items;
  String? name;
  bool _isLoading = false;
  late final Dio _dio;
  final _baseUrl = "https://jsonplaceholder.typicode.com/";

  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
    name = 'emir';
    fetchPostItems();
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchPostItems() async {
    _changeLoading();
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');
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
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          return _PostCard(model: _items?[index]);
        },
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






















// Servis Kullanimi
// get data cekme
// 200 ile 300 arasi donuyosa basarili
// 400'den sonra sorun var

// post data ekleme
// 

// delete silme
//

// put guncelleme
//