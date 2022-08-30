import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failures/main_failure.dart';
import 'package:netflix/domain/downlods/i_downloads_repo.dart';
import 'package:netflix/domain/downlods/models/downloads_model.dart';
import 'package:netflix/domain/search/i_search_repo.dart';
import 'package:netflix/domain/search/model/search_resp/search_resp.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadRepo _iDownloadRepo;
  final ISearchRepo _iSearchRepo;
  SearchBloc(
    this._iDownloadRepo,
    this._iSearchRepo,
  ) : super(SearchState.initial()) {
    // >>>idle state<<<
    on<Initialize>((event, emit) async {
      emit(
        const SearchState(
          searchResultList: [],
          ideLisst: [],
          isLodinng: true,
          isError: false,
        ),
      );
      //>>> get trending <<<
      final result = await _iDownloadRepo.getDownloadsImage();
      result.fold(
        (MainFailure failure) {
          emit(
            const SearchState(
              searchResultList: [],
              ideLisst: [],
              isLodinng: false,
              isError: true,
            ),
          );
        },
        (List<Downloads> list) {
          emit(
            SearchState(
              searchResultList: [],
              ideLisst: list,
              isLodinng: false,
              isError: false,
            ),
          );
        },
      );
    });
    // >>>Search result state<<<
    on<SearchMovie>((event, emit) {
      //>>> serach api call <<<
      _iSearchRepo.searchMovies(movieQuery: event.movieQuery);
    });
  }
}
