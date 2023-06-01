extension EIterable<E> on Iterable<E> {
  T foldAndReturnIfNotFound<T>(T initialValue, T Function(T previousValue, E element) combine) {
    var value = initialValue;
    for (E element in this) {
      if (value == false) return value;
      value = combine(value, element);
      if (value == initialValue) return value;
    }
    return value;
  }
}
