import 'package:checkout/src/order/view_model/my_orders_cubit.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:network/network.dart';
import 'package:widgets/widgets.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  _MyOrdersScreenState createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  MyOrdersCubit ordersCubit = DI.container<MyOrdersCubit>();
  ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    ordersCubit.fetchOrders();
    controller.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (controller.offset >= controller.position.maxScrollExtent &&
        !controller.position.outOfRange) {
      ordersCubit.fetchNextList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringsConstants.myOrders),
      ),
      body: BlocBuilder<MyOrdersCubit, ResultState<List<OrderModel>>>(
        bloc: ordersCubit,
        builder: (BuildContext context, ResultState<List<OrderModel>> state) {
          return ResultStateBuilder(
            state: state,
            loadingWidget: (bool isReloading) {
              return const Center(
                child: CommonAppLoader(),
              );
            },
            dataWidget: (List<OrderModel> value) {
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

  Widget orderView(List<OrderModel> orderList) {
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
                                StringsConstants.orderedOnCaps,
                                style: AppTextStyles.t14,
                              ),
                              Text(
                                getOrderedTime(
                                    orderList[orderListIndex].orderedAt!),
                                style: AppTextStyles.t1,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    ...List<Widget>.generate(
                        orderList[orderListIndex].orderItems!.length,
                        (index) => orderCard(
                            orderList[orderListIndex].orderItems![index])),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              StringsConstants.totalCaps,
                              style: AppTextStyles.t14,
                            ),
                            const SizedBox(
                              width: 13,
                            ),
                            Text(
                              "${orderList[orderListIndex].currency} ${orderList[orderListIndex].price}",
                              style: AppTextStyles.t18,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "${orderList[orderListIndex].orderStatus}",
                              style: AppTextStyles.t19,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            getOrderStatusIcon(
                                orderList[orderListIndex].orderStatus!)
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
                  imageUrl: orderItem.image!,
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
                      orderItem.name!,
                      style: AppTextStyles.t18,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${orderItem.currency} ${orderItem.price} / ${orderItem.unit}",
                      style: AppTextStyles.t19,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "${orderItem.noOfItems} item${orderItem.noOfItems! > 1 ? "s" : ""}",
              style: AppTextStyles.t19,
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
        color: AppColors.color5EB15A,
      );
    } else {
      return Icon(
        Icons.info,
        color: AppColors.colorFFE57F,
      );
    }
  }
}
