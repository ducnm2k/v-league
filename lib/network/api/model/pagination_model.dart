class PaginationModel<T>{
Pagination pagination;
    List<T> result;
    int statusCode;
    bool isError;
    String message;

    PaginationModel({
        required this.pagination,
        required this.result,
        required this.statusCode,
        required this.isError,
        required this.message,
    });


     factory PaginationModel.fromJson(Map<String, dynamic> json, Function fromJsonModel) => PaginationModel(
        pagination: Pagination.fromJson(json["pagination"]),
        result: List<T>.from(json["result"].map((x) => fromJsonModel(x))),
        statusCode: json["statusCode"],
        isError: json["isError"],
        message: json["message"],
    );
}
class Pagination {
    Pagination({
        required this.totalCount,
        required this.maxPageSize,
        required this.currentPage,
        required this.totalPages,
        required this.hasNext,
        required this.hasPrevious,
    });

    int totalCount;
    int maxPageSize;
    int currentPage;
    int totalPages;
    bool hasNext;
    bool hasPrevious;

    factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        totalCount: json["totalCount"],
        maxPageSize: json["maxPageSize"],
        currentPage: json["currentPage"],
        totalPages: json["totalPages"],
        hasNext: json["hasNext"],
        hasPrevious: json["hasPrevious"],
    );

    Map<String, dynamic> toJson() => {
        "totalCount": totalCount,
        "maxPageSize": maxPageSize,
        "currentPage": currentPage,
        "totalPages": totalPages,
        "hasNext": hasNext,
        "hasPrevious": hasPrevious,
    };
}
