import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sub_categories_state.dart';

class SubCategoriesCubit extends Cubit<SubCategoriesState> {
  SubCategoriesCubit() : super(SubCategoriesInitial());
}
