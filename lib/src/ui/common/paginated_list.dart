import 'package:flutter/material.dart';

/// Signature for a function that returns a Future List of type 'T' i.e. list
/// of items in a particular page that is being asynchronously called.
///
/// Used by [PaginationListView] widget.

/// Signature for a function that creates a widget for a given item of type 'T'.
typedef ItemWidgetBuilder<T> = Widget Function(int index, T item);

/// A scrollable list which implements pagination.
///
/// When scrolled to the end of the list [PaginationListView] calls [pageBuilder] which
/// must be implemented which returns a Future List of type 'T'.
///
/// [itemBuilder] creates widget instances on demand.
class PaginationListView<@required T> extends StatefulWidget {
  /// Creates a scrollable, paginated, linear array of widgets.
  ///
  /// The arguments [pageBuilder], [itemBuilder] must not be null.
  PaginationListView({
    Key? key,
    required this.items,
    required this.itemBuilder,
    required this.onPagination,
    required this.paginationController,
    this.scrollDirection = Axis.vertical,
    this.progress,
    this.reverse = false,
    this.primary,
    this.physics,
    this.padding,
    this.itemExtent,
    this.cacheExtent,
    this.semanticChildCount,
  })  : assert(itemBuilder != null),
        assert(items != null),
        assert(onPagination != null),
        assert(paginationController != null),
        super(key: key);

  /// Called when the list scrolls to an end

  /// Called to build children for [PaginationListView]

  /// Function should return a widget
  final ItemWidgetBuilder<T> itemBuilder;

  /// Scroll direction of list view
  final Axis scrollDirection;

  /// When non-null [progress] widget is called to show loading progress
  final Widget? progress;

  final bool reverse;

  final bool? primary;
  final ScrollPhysics? physics;
  final bool shrinkWrap = false;
  final EdgeInsetsGeometry? padding;
  final double? itemExtent;
  final bool addAutomaticKeepAlives = true;
  final bool addRepaintBoundaries = true;
  final bool addSemanticIndexes = true;
  final double? cacheExtent;
  final int? semanticChildCount;

  final PaginationListController paginationController;
  final List<T> items;
  final ValueChanged<int> onPagination;

  @override
  _PaginationListViewState<T> createState() => _PaginationListViewState<T>();
}

class _PaginationListViewState<T> extends State<PaginationListView<T>> {
  bool _paginate = false;
  ScrollController? _scrollController;
  bool _hasLoaded = false;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    widget.paginationController?._addState(this);
    _scrollController = ScrollController();
    addScroll();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: widget.padding,
      controller: _scrollController,
      physics: widget.physics,
      primary: widget.primary,
      reverse: widget.reverse,
      shrinkWrap: widget.shrinkWrap,
      itemExtent: widget.itemExtent,
      cacheExtent: widget.cacheExtent,
      itemCount: widget.items.length + 1,
      addAutomaticKeepAlives: widget.addAutomaticKeepAlives,
      addRepaintBoundaries: widget.addRepaintBoundaries,
      addSemanticIndexes: widget.addSemanticIndexes,
      scrollDirection: widget.scrollDirection,
      itemBuilder: (context, position) {
        if (position == widget.items.length) {
          if (!_paginate) return Container();
          return widget.progress ?? defaultLoading();
        } else {
          return widget.itemBuilder(position, widget.items[position]);
        }
      },
    );
  }

  Widget defaultLoading() {
    return Align(
      child: SizedBox(
        height: 40,
        width: 40,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }

  _setPaginationState(bool value) {
    setState(() {
      _paginate = value;
    });
  }

  _setLoadedState(bool value) {
    setState(() {
      _hasLoaded = value;
    });
  }

  addScroll() {
    _scrollController!.addListener(() {
      if (_scrollController!.offset >=
              _scrollController!.position.maxScrollExtent &&
          !_scrollController!.position.outOfRange) {
        if (!_hasLoaded) {
          setState(() {
            _paginate = true;
            ++_currentPage;
          });
          widget.onPagination(_currentPage);
        }
      }
    });
  }

  _errorPageChange() {
    setState(() {
      if (_currentPage > 0) {
        --_currentPage;
      }
    });
  }
}

class PaginationListController {
  _PaginationListViewState? _listViewState;

  void _addState(_PaginationListViewState state) {
    this._listViewState = state;
  }

  showPagination() {
    if (_listViewState == null) {
      return null;
    }
    _listViewState!._setPaginationState(true);
    _listViewState!._setLoadedState(true);
  }

  successHidePagination() {
    if (_listViewState == null) {
      return null;
    }
    _listViewState!._setPaginationState(false);
    _listViewState!._setLoadedState(false);
  }

  errorHidePagination() {
    if (_listViewState == null) {
      return null;
    }
    _listViewState!._errorPageChange();
    _listViewState!._setPaginationState(false);
    _listViewState!._setLoadedState(false);
  }
}
