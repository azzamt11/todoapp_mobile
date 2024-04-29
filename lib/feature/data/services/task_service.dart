import 'package:chopper/chopper.dart';

import 'package:todoapp_mobile/feature/data/models/task.dart';
import 'package:todoapp_mobile/feature/data/models/task_insert.dart';

part 'task_service.chopper.dart';

@ChopperApi(baseUrl: "/tasks")
abstract class TaskService extends ChopperService {

  static TaskService create([ChopperClient? client]) => _$TaskService(client);

  static const API = 'https://fearless-enthusiasm-production.up.railway.app';

  @Get()
  Future<Response<List<Task>>> getTaskList();

  @Get(path: '{title}')
  Future<Response<Task>> getTask(@Path() String title);

  @Post()
  Future<Response<Task>> createTask(@Body() TaskManipulation item);

  @Put(path: '{title}')
  Future<Response> updateTask(@Path() String title, @Body() TaskManipulation item);

  @Delete(path: '{title}')
  Future<Response> deleteTask(@Path() String title);
}