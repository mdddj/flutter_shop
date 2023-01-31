class AppUrls {
  // static const String BASE_URL = 'http://localhost:8080/wx';//本地服务器

  // static const String BASE_URL = 'http://10.10.64.146:8080/wx'; //本地服务器
  static const String BASE_URL = 'http://ntcn.net:8080/wx'; //本地服务器

  static const String HOME_URL = BASE_URL + '/home/index'; //首页数据

  static const String HOME_FIRST_CATEGORY =
      BASE_URL + '/catalog/getfirstcategory'; //商品分类第一级

  //http://localhost:8080/wx/catalog/getsecondcategory?id=1005000
  static const String HOME_SECOND_CATEGORY =
      BASE_URL + '/catalog/getsecondcategory'; //商品分类第二级

  static const String GOODS_LIST_URL = BASE_URL + '/goods/list'; //分类下的商品列表

  static const String CATEGORY_LIST = BASE_URL + "/goods/category"; //获取分类下的子类

  static const String GOODS_DETAILS_URL = BASE_URL + '/goods/detail'; //商品详情

  //用户信息相关接口
  static const String REGISTER = BASE_URL + '/auth/register'; //注册

  static const String LOGIN = BASE_URL + '/auth/login'; //登录

  // ---- 购物车相关 ----- //
  static const String ADD_CART = BASE_URL + '/cart/add'; //加入购物车

  static const String CART_LIST = BASE_URL + '/cart/index'; //购物车数据

  static const String CART_CHECK=BASE_URL+'/cart/checked';//购物车商品勾选计算价格

  static const String CART_DELETE=BASE_URL+'/cart/delete';//删除购物车数据

  static const String CART_UPDATE=BASE_URL+'/cart/update';//更新购物车

  static const String CART_BUY=BASE_URL+'/cart/checkout';//购物车下单

  static const String SUBMIT_ORDER=BASE_URL+ '/order/submit';// 提交订单

  static const String FAST_BUY=BASE_URL+'/cart/fastadd';//立即购买

  static const String COLLECT_ADD_DELETE=BASE_URL+ '/collect/addordelete'; //添加或取消收藏

  static const String MINE_COLLECT=BASE_URL+ '/collect/list'; //收藏列表

  static const String ADDRESS_LIST=BASE_URL+'/address/list';//地址列表

  static const String ADDRESS_DETAIL=BASE_URL+'/address/detail';//地址详情

  static const String ADDRESS_DELETE=BASE_URL+'/address/delete';//删除地址

  static const String ADDRESS_SAVE=BASE_URL+'/address/save';//增加地址

  static const String MINE_ORDER_DETAIL=BASE_URL+"/order/detail";//订单详情

  static const String MINE_ORDERS=BASE_URL+'/order/list';//我的订单

  static const String MINE_ORDER_DELETE=BASE_URL+"/order/delete";//删除订单

  static const String MINE_ORDER_CANCEL=BASE_URL+"/order/cancel";//取消订单

  static const String MINE_COUPON_LIST=BASE_URL+'/coupon/mylist';//所有优惠券

  static const String RECEIVE_COUPON=BASE_URL+"/coupon/receive";//领取优惠券

  static const String MINE_FOOTPRINT=BASE_URL+'/footprint/list';//足迹

  static const String MINE_FOOTPRINT_DELETE=BASE_URL+'/footprint/delete';//删除足迹

}
