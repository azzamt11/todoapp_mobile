// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$TaskService extends TaskService {
  _$TaskService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = TaskService;

  @override
  Future<Response<List<Task>>> getTaskList() {
    const $url = '/tasks';
    final $request = Request('GET', Uri.parse($url), client.baseUrl);
    return client.send<List<Task>, Task>($request);
  }

  @override
  Future<Response<Task>> getTask(String title) {
    final $url = '/tasks/$title';
    final $request = Request('GET', Uri.parse($url), client.baseUrl);
    return client.send<Task, Task>($request);
  }

  @override
  Future<Response<Task>> createTask(TaskManipulation item) {
    const $url = '/tasks';
    final $body = item;
    final $request = Request('POST', Uri.parse($url), client.baseUrl, body: $body);
    return client.send<Task, Task>($request);
  }

  @override
  Future<Response> updateTask(String title, TaskManipulation item) {
    final $url = '/tasks/$title';
    final $body = item;
    final $request = Request('PUT', Uri.parse($url), client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response> deleteTask(String title) {
    final $url = '/tasks/$title';
    final $request = Request('DELETE', Uri.parse($url), client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}