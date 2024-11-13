import '../../model/allCity/allcity_mdel.dart';
import '../../model/search/search_data_model.dart';

class SearchModelUpdate {
  final bool? loading;
  final SearchModel? searchM;
  final Datum? searchCity;

  SearchModelUpdate({
    this.loading,
    this.searchM,
    this.searchCity,
  });

  // Factory constructor to create an instance from JSON
  factory SearchModelUpdate.fromJson(Map<String, dynamic> json) {
    return SearchModelUpdate(
      loading: json['loading'] ?? false,
      searchM: json['searchM'] ?? false,
      searchCity: json['searchCity'] ?? '',
    );
  }

  // Method to convert the instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'loading': loading,
      'searchM': searchM,
      'searchCity': searchCity,
    };
  }
}
