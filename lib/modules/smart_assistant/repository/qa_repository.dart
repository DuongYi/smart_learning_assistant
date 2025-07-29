import 'dart:io';
import '../domain/service/qa_service.dart';
import 'iqa_repository.dart';

class QARepository implements IQARepository {
  final QAService _service;
  QARepository({QAService? service}) : _service = service ?? QAService();

  @override
  Future<String> sendQuestion({required String question, File? image}) {
    return _service.sendQuestion(question: question, image: image);
  }
}
