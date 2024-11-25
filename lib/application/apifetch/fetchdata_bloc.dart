import 'dart:async';
import 'dart:convert';
import 'dart:developer';  // For debug logs
import 'package:flutter/foundation.dart';
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

  FutureOr<void> _fetchdata(Fetchdata event, Emitter<FetchdataState> emit) async {
    emit(Fechdataloading());
    try {
      // Use isolate for fetching data
      final data = await compute(fetchDataInIsolate, 'https://raw.githubusercontent.com/shabeersha/test-api/main/test-notifications.json');
      emit(Fechloadeddata(loadad: data));
    } catch (e) {
      emit(Fechdataerror(error: e.toString()));
    }
  }

  // This function will run in a separate isolate
  static Future<List<NotificationData>> fetchDataInIsolate(String url) async {
    final Uri uri = Uri.parse(url);
    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);
        if (data['data'] != null && data['data'] is List) {
          List<dynamic> notifications = data['data'];
          return notifications.map((e) => NotificationData.fromJson(e)).toList();
        } else {
          throw Exception('No notifications found in the response');
        }
      } else {
        throw Exception('Failed to load notifications');
      }
    } catch (e) {
      rethrow;  // Propagate error back to the calling method
    }
  }
}
