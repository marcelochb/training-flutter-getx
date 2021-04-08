abstract class ApiProviderInterface {
  Future getPaginated(String baseUrl, int initialPage, int pageLimitByRequest);
  Future getAll(String path);
}
