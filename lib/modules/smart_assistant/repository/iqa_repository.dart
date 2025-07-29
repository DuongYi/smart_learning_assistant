import 'dart:io';

abstract class IQARepository {
  Future<String> sendQuestion({required String question, File? image});
}
