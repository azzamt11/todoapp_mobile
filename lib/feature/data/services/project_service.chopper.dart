// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ProjectService extends ProjectService {
  _$ProjectService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ProjectService;

  @override
  Future<Response<List<Project>>> getProjectList() {
    const $url = '/projects';
    final $request = Request('GET', Uri.parse($url), client.baseUrl);
    return client.send<List<Project>, Project>($request);
  }

  @override
  Future<Response<Project>> getProject(String title) {
    final $url = '/projects/$title';
    final $request = Request('GET', Uri.parse($url), client.baseUrl);
    return client.send<Project, Project>($request);
  }

  @override
  Future<Response<Project>> createProject(ProjectManipulation item) {
    const $url = '/projects';
    final $body = item;
    final $request = Request('POST', Uri.parse($url), client.baseUrl, body: $body);
    return client.send<Project, Project>($request);
  }

  @override
  Future<Response> updateProject(String title, ProjectManipulation item) {
    final $url = '/projects/$title';
    final $body = item;
    final $request = Request('PUT', Uri.parse($url), client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response> deleteProject(String title) {
    final $url = '/projects/$title';
    final $request = Request('DELETE', Uri.parse($url), client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}