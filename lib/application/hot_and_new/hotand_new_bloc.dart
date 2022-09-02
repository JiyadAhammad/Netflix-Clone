import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotand_new_event.dart';
part 'hotand_new_state.dart';
part 'hotand_new_bloc.freezed.dart';

class HotandNewBloc extends Bloc<HotandNewEvent, HotandNewState> {
  HotandNewBloc() : super(_Initial()) {
    on<HotandNewEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
