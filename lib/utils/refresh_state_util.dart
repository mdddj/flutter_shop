
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

class RefreshStateUtil {
  RefreshStateUtil._();

  static final _instance = RefreshStateUtil._();

  factory RefreshStateUtil.getInstance() => _instance;

  stopRefreshOrLoadMore(RefreshController refreshController) {
    if (refreshController.isRefresh) {
      refreshController.refreshCompleted();
    }
    if (refreshController.isLoading) {
      refreshController.loadComplete();
    }
  }
}
