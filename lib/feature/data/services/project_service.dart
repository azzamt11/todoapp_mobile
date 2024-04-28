import 'package:chopper/chopper.dart';

import 'package:todoapp_mobile/feature/data/models/project.dart';
import 'package:todoapp_mobile/feature/data/models/project_insert.dart';

part 'project_service.chopper.dart';

@ChopperApi(baseUrl: "/projects")
abstract class ProjectService extends ChopperService {

  static ProjectService create([ChopperClient? client]) => _$ProjectService(client);

  static const API = 'https://fearless-enthusiasm-production.up.railway.app/';

  @Get()
  Future<Response<List<Project>>> getProjectList();

  @Get(path: '{title}')
  Future<Response<Project>> getProject(@Path() String title);

  @Post()
  Future<Response<Project>> createProject(@Body() ProjectManipulation item);

  @Put(path: '{title}')
  Future<Response> updateProject(@Path() String title, @Body() Project item);

  @Delete(path: '{title}')
  Future<Response> deleteProject(@Path() String title);
}