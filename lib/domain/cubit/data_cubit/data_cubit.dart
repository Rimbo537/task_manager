import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/data/repository_impl/repository_impl.dart';
import 'package:task_manager/domain/cubit/data_cubit/data_state.dart';

class DataCubit extends Cubit<DataState> {
  DataCubit() : super(DataStateInitial(model: []));

  ReposImpl _apiContainer = ReposImpl();

  Future<void> postData() async {
    try {
      emit(
        state.copyWith(
          isLoading: true,
        ),
      );

      final response = await _apiContainer.getDataData();

      emit(
        state.copyWith(
          model: response,
          isLoading: false,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          error: e.toString(),
        ),
      );
    }
  }
}



/*final byteData = File(photo.path).readAsBytesSync();

      final multipartFile = MultipartFile.fromBytes(
        'photo',
        byteData,
        filename: '${DateTime.now().second}.jpg',
        contentType: MediaType(
          'image',
          'jpg',
        ), //todo need to move this to repository, since domain shouldn't be doing these kinds of operations on data
      );
      
      */