import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'halal_state.dart';

class HalalCubit extends Cubit<HalalState> {
  HalalCubit() : super(HalalInitial());
}
