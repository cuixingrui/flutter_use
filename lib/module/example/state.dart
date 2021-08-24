import 'package:flutter_use/app/config/tag_config.dart';
import 'package:flutter_use/bean/common/btn_info.dart';
import 'package:flutter_use/bean/common/tree_info.dart';

class ExampleState {
  late List<TreeTwiceInfo> trees;

  ExampleState() {
    trees = [
      //GetX
      TreeTwiceInfo(
        title: 'GetX',
        btnInfo: [
          BtnInfo(title: '计数器-响应式', tag: ExampleConfig.getCounterRx),
          BtnInfo(title: '计数器-简单式', tag: ExampleConfig.getCounterEasy),
          BtnInfo(title: '计数器-进阶版', tag: ExampleConfig.getCounterHigh),
          BtnInfo(title: '跨页面事件交互', tag: ExampleConfig.getJump),
          BtnInfo(title: 'GetX实例-自动释放', tag: ExampleConfig.getAutoDispose),
          BtnInfo(title: '计数器-binding', tag: ExampleConfig.getCounterBinding),
          BtnInfo(title: 'EasyX-自定义EasyBuilder刷新机制', tag: ExampleConfig.counterEasyXBuilder),
          BtnInfo(title: 'EasyX-自定义ebx刷新机制', tag: ExampleConfig.counterEasyXEbx),
        ],
      ),

      //Bloc
      TreeTwiceInfo(
        title: 'Bloc',
        btnInfo: [
          BtnInfo(title: '计数器-Cubit', tag: ExampleConfig.blCubitCounter),
          BtnInfo(title: '计数器-Bloc', tag: ExampleConfig.blBlocCounter),
          BtnInfo(title: '全局Bloc', tag: ExampleConfig.globalBloc),
          BtnInfo(title: 'Stream应用', tag: ExampleConfig.stream),
          BtnInfo(title: '自定义Builder', tag: ExampleConfig.blCustomBuilder),
          BtnInfo(title: '自定义状态管理框架-EasyC', tag: ExampleConfig.counterEasyC),
        ],
      ),

      //Provider
      TreeTwiceInfo(
        title: 'Provider',
        btnInfo: [
          BtnInfo(title: '计数器-简单版', tag: ExampleConfig.providerEasy),
          BtnInfo(title: '计数器-进阶版', tag: ExampleConfig.providerHigh),
          BtnInfo(title: '全局Provider', tag: ExampleConfig.providerSpanOne),
          BtnInfo(title: 'ChangeNotifier使用', tag: ExampleConfig.testNotifier),
          BtnInfo(title: '自定义Builder', tag: ExampleConfig.customBuilder),
          BtnInfo(title: '自定义状态管理框架-EasyP', tag: ExampleConfig.counterEasyP),
          BtnInfo(
              title: '自定义状态管理框架-EasyP全局',
              tag: ExampleConfig.counterGlobalEasyP),
        ],
      ),

      //测试
      TreeTwiceInfo(
        title: '测试',
        btnInfo: [
          BtnInfo(title: '测试布局', tag: ExampleConfig.testLayout),
          BtnInfo(title: '测试网络（不支持web)', tag: ExampleConfig.testNet),
        ],
      ),
    ];
  }
}

