import 'package:cached_network_image/cached_network_image.dart';
import 'package:core/state/result_state.dart';
import 'package:core/utils/date_time_util.dart';
import 'package:domain/models/order_model.dart';
import 'package:flutter/material.dart';
import 'package:core/state_manager/base_view.dart';
import 'package:core/theme/theme_provider.dart';

import '../../../res/colors.gen.dart';
import '../../../widgets/common_app_loader.dart';
import '../../../widgets/result_state_builder.dart';
import 'package:localization/localization.dart';

import '../view_model/my_orders_cubit.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  State createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Localization.value.myOrders),
      ),
      body: BaseView<MyOrdersCubit, ResultState<List<Order>>>(
        onViewModelReady: (viewModel) {
          viewModel.fetchOrders();
        },
        builder: (
          BuildContext context,
          viewModel,
          ResultState<List<Order>> state,
        ) {
          return ResultStateBuilder(
            state: state,
            loadingWidget: (bool isReloading) {
              return const Center(
                child: CommonAppLoader(),
              );
            },
            dataWidget: (List<Order> value) {
              return orderView(value);
            },
            errorWidget: (String error) {
              return Container();
            },
          );
        },
      ),
    );
  }

  Widget orderView(List<Order> orderList) {
    return ListView.builder(
      controller: controller,
      itemCount: orderList.length,
      itemBuilder: (BuildContext context, int orderListIndex) {
        return Column(
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(top: 20, left: 16, right: 16),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Localization.value.orderedOnCaps,
                                style: ThemeProvider.textTheme.button,
                              ),
                              Text(
                                getOrderedTime(
                                    orderList[orderListIndex].orderedAt),
                                style: ThemeProvider.textTheme.bodyText1,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    ...List<Widget>.generate(
                        orderList[orderListIndex].orderItems.length,
                        (index) => orderCard(
                            orderList[orderListIndex].orderItems[index])),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              Localization.value.totalCaps,
                              style: ThemeProvider.textTheme.button,
                            ),
                            const SizedBox(
                              width: 13,
                            ),
                            Text(
                              "${orderList[orderListIndex].currency} ${orderList[orderListIndex].price}",
                              style: ThemeProvider.textTheme.bodyText2,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              orderList[orderListIndex].orderStatus,
                              style: ThemeProvider.textTheme.caption,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            getOrderStatusIcon(
                                orderList[orderListIndex].orderStatus)
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                )),
            (orderListIndex < orderList.length) ? const Divider() : Container()
          ],
        );
      },
    );
  }

  Widget orderCard(OrderItem orderItem) {
    return Container(
      margin: const EdgeInsets.only(top: 16, bottom: 20),
      child: Card(
          child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CachedNetworkImage(
                  imageUrl: orderItem.image,
                  height: 46,
                  width: 46,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      orderItem.name,
                      style: ThemeProvider.textTheme.bodyText2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${orderItem.currency} ${orderItem.price} / ${orderItem.unit}",
                      style: ThemeProvider.textTheme.caption,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "${orderItem.noOfItems} item${orderItem.noOfItems > 1 ? "s" : ""}",
              style: ThemeProvider.textTheme.caption,
            ),
          ],
        ),
      )),
    );
  }

  Widget getOrderStatusIcon(String orderStatus) {
    if (orderStatus == "Delivered") {
      return Icon(
        Icons.check_circle,
        color: AppColors.color6EBA49,
      );
    } else {
      return Icon(
        Icons.info,
        color: AppColors.colorFFE57F,
      );
    }
  }
}
