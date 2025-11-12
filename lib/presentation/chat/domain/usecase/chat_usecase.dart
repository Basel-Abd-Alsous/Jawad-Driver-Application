import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/services/api_services/result_model.dart';
import '../model/chat_model.dart';
import '../repoistory/chat_repoistory.dart';

class ChatUsecase {
  final ChatRepoistory chatRepoistory;

  ChatUsecase({required this.chatRepoistory});

  Future<Either<Failure, Unit>> sendMessage(int id, String message) async => await chatRepoistory.sendMessage(id, message);
  Future<Either<Failure, Result<ChatModel>>> getMessages(int id) async => await chatRepoistory.getMessages(id);
}
