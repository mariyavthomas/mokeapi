// ignore_for_file: must_be_immutable

part of 'fetchdata_bloc.dart';

@immutable
sealed class FetchdataState {}

final class FetchdataInitial extends FetchdataState {}

class Fechdataloading extends FetchdataState{}

class Fechloadeddata extends FetchdataState{
   List<NotificationData>loadad=[];
  Fechloadeddata({ required this.loadad});
 

  List<Object> get props => [loadad];
}

class Fechdataerror extends FetchdataState{
  final String error;
  Fechdataerror({required this.error});
}