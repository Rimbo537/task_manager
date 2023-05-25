import 'package:dio/dio.dart';
import 'package:task_manager/data/response/response.dart';
import 'package:task_manager/domain/models/data_model.dart';

// class RepositoryImplementer {
//   RepositoryImplementer(this._remoteDataSource);

//   final RemoteDataSourceImplementer _remoteDataSource;

//   Future<List<TaskModel>> postData(PostRequest postRequest) async {
//     try {
//       final response = await _remoteDataSource.postDateResponse(postRequest);

//       final data = DataResponse.fromJson(response.data as Map<String, dynamic>);

//       if (data.error != null) {
//         throw Exception();
//       }
//       return data.data.map((e) => e.toDomain()).toList();
//     } catch (e) {
//       rethrow;
//     }
//   }
// }

// class ReposImpl {
//   Future<List> getDataData() async {
//     var response = await Dio().get('https://to-do.softwars.com.ua//tasks');

//     // final response = await _apiContainer.get(path: '/tasks');
//     print(response.data);
//     return response.data['data'] as List;
//   }
// }

class ReposImpl {
  Future<List<TaskModel>> getDataData() async {
    var response = await Dio().get('https://to-do.softwars.com.ua//tasks');

    var data = response.data['data'];
    print(data);

    List<TaskModel> taskList = [];

    for (var item in data) {
      TaskModel task = TaskModel.fromJson(item);

      taskList.add(task);
    }

    return taskList;
  }

  Future<TaskResponse?> postData({required TaskResponse model}) async {
    Dio dio = Dio();
    TaskResponse? retrievedUser;

    try {
      Response response = await dio.post(
        'https://to-do.softwars.com.ua//tasks',
        data  : model.toJson(),
      );

      print('User created: ${response.data}');

      retrievedUser = TaskResponse.fromJson(response.data);
    } catch (e) {
      print('Error creating user: $e');
    }

    return retrievedUser;

    // final response =
    //     await dio.post('https://to-do.softwars.com.ua//tasks',queryParameters: {
    //   "taskId": "1123",
    //   "status": 1,
    //   "name": "Test Spider Man",
    //   "type": 1,
    //   "description": "Spider Man Spider Man Spider Man Spider Man Spider Man",
    //   "finishDate": "2022-02-22",
    //   "urgent": 0,
    //   "file": "",
    // });

    // var data = response.data['data'];
    // print(data);

    // List<TaskModel> taskList = [];

    // for (var item in data) {
    //   TaskModel task = TaskModel.fromJson(item);

    //   taskList.add(task);
    // }
  }
}
