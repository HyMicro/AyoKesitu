import 'dart:convert';

// restapi model
class Restapi<D, E> {
  final bool success;
  final String? message;
  final E? error;
  final D? data;
  final Pagination? pagination;

  Restapi({
    this.success = false,
    this.message = '',
    this.data,
    this.error,
    this.pagination,
  });

  factory Restapi.fromMap(Map<String, dynamic>? map, {Function(dynamic)? dataFrom, Function(dynamic)? errorFom}) {
    return Restapi(
      success: map?["success"] ?? false,
      message: map?["message"] ?? "Server Error",
      data: dataFrom == null ? null : dataFrom(map?["data"]),
      error: errorFom == null ? null : errorFom(map?["error"]),
      pagination: map?["pagination"] == null ? null : Pagination.fromMap(map?['pagination']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "success": success,
      "message": message,
      "data": json.encode(data as D),
      "error": json.encode(error as E),
      "pagination": pagination?.toMap(),
    };
  }
}

// pagination model
class Pagination {
  final int totalRecords;
  final int currentPage;
  final int totalPages;
  final int nextPage;
  final int prevPage;

  Pagination({
    this.totalRecords = 0,
    this.currentPage = 0,
    this.totalPages = 0,
    this.nextPage = 0,
    this.prevPage = 0,
  });

  factory Pagination.fromMap(Map<String, dynamic>? map) {
    return Pagination(
      totalRecords: map?["total_records"] ?? 0,
      currentPage: map?["current_page"] ?? 0,
      totalPages: map?["total_pages"] ?? 0,
      nextPage: map?["next_page"] ?? 0,
      prevPage: map?["prev_page"] ?? 0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "total_records": totalRecords,
      "current_page": currentPage,
      "total_pages": totalPages,
      "next_page": nextPage,
      "prev_page": prevPage,
    };
  }
}
