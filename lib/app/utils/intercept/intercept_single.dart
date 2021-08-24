///一层通用拦截器，T的类型必须一致
abstract class InterceptSingle<T> {
  void intercept(T data, SingleHandler handler) => handler.next(data);
}

///添加拦截器,触发拦截器方法入口
class InterceptSingleHandler<T> {
  _InterceptSingleHandler _handler = _InterceptSingleHandler(
    index: 0,
    intercepts: [],
  );

  void add(InterceptSingle intercept) {
    //一种类型的拦截器只能添加一次
    for (var item in _handler.intercepts) {
      if (item.runtimeType == intercept.runtimeType) {
        return;
      }
    }

    _handler.intercepts.add(intercept);
  }

  void delete(InterceptSingle intercept) {
    _handler.intercepts.remove(intercept);
  }

  void intercept(T data) {
    _handler.next(data);
  }
}

///------------实现不同处理器 参照 dio api设计 和 OkHttp实现思想---------------
abstract class SingleHandler {
  next(dynamic data);
}

///实现init处理器
class _InterceptSingleHandler extends SingleHandler {
  List<InterceptSingle> intercepts;

  int index;

  _InterceptSingleHandler({
    required this.index,
    required this.intercepts,
  });

  @override
  next(dynamic data) {
    if (index >= intercepts.length) {
      return;
    }

    var intercept = intercepts[index];
    var handler =
        _InterceptSingleHandler(index: index + 1, intercepts: intercepts);

    intercept.intercept(data, handler);
  }
}
