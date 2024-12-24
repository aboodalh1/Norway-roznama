import 'package:flutter_bloc/flutter_bloc.dart';

part 'prays_state.dart';

class PraysCubit extends Cubit<PraysState> {
  PraysCubit() : super(PraysInitial());
}
