import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:mockapi/domin/notificationmode.dart';

part 'fetchdata_event.dart';
part 'fetchdata_state.dart';

class FetchdataBloc extends Bloc<FetchdataEvent, FetchdataState> {
  FetchdataBloc() : super(FetchdataInitial()) {
    on<Fetchdata>(_fetchdata);
  }

  FutureOr<void> _fetchdata(
      Fetchdata event, Emitter<FetchdataState> emit) async {
    emit(Fechdataloading());
    try {
      // ignore: unused_local_variable
      final data = await fetchall();
      emit(Fechloadeddata(loadad: data));
    } catch (e) {
      emit(Fechdataerror(error: e.toString()));
    }
  }

  Future<List<NotificationData>> fetchall() async {
    final fetchurl =
        'https://raw.githubusercontent.com/shabeersha/test-api/main/test-notifications.json';
    final url = Uri.parse(fetchurl);

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);

        print('Response Data: $data');

        if (data['data'] != null && data['data'] is List) {
          List<dynamic> notifications = data['data'];

          List<NotificationData> list =
              notifications.map((e) => NotificationData.fromJson(e)).toList();

          print("Fetched ${list.length} notifications.");
          return list;
        } else {
          print("No notifications data found.");
          throw Exception('No notifications found in the response');
        }
      } else {
        print("Failed to fetch data. Status code: ${response.statusCode}");
        throw Exception('Failed to load notifications');
      }
    } catch (e) {
      print('Exception occurred in fetching data: $e');
      throw Exception('Failed to fetch data');
    }
  }
}
