// This file is a direct port of ShareJS json0 library https://github.com/ottypes/json0
part of otdartlib.ottypes;

mixin _BootstrapTransform<T> on Object {
  transformComponent(List dest, T c, T otherC, String type);
  append(List dest, T c);
  checkValidOp(List<T> op);

  transformComponentX(T left, T right, List destLeft, List destRight) {
    transformComponent(destLeft, left, right, 'left');
    transformComponent(destRight, right, left, 'right');
  }

  transformX(List<T> leftOp, List<T> rightOp) {
    checkValidOp(leftOp);
    checkValidOp(rightOp);
    var newRightOp = [];

    for (var i = 0; i < rightOp.length; i++) {
      T? rightComponent = rightOp[i];

      // Generate newLeftOp by composing leftOp by rightComponent
      var newLeftOp = <T>[];
      var k = 0;
      while (k < leftOp.length) {
        var nextC = <T>[];
        transformComponentX(leftOp[k], rightComponent as T, newLeftOp, nextC);
        k++;

        if (nextC.length == 1) {
          rightComponent = nextC[0];
        } else if (nextC.length == 0) {
          for (var j = k; j < leftOp.length; j++) {
            append(newLeftOp, leftOp[j]);
          }
          rightComponent = null;
          break;
        } else {
          // Recurse.
          var pair = transformX(leftOp.sublist(k).toList(), nextC);
          pair[0].forEach((o) => append(newLeftOp, o));
          pair[1].forEach((o) => append(newRightOp, o));

          rightComponent = null;
          break;
        }
      }

      if (rightComponent != null) {
        append(newRightOp, rightComponent);
      }
      leftOp = newLeftOp;
    }
    return [leftOp, newRightOp];
  }

  // Transforms op with specified type ('left' or 'right') by otherOp.
  List<T> transform(List<T> op, List<T> otherOp, String type) {
    if (!(type == 'left' || type == 'right')) throw new Exception("type must be 'left' or 'right'");

    if (otherOp.isEmpty) return op;

    if (op.length == 1 && otherOp.length == 1) return transformComponent([], op[0], otherOp[0], type);

    if (type == 'left') {
      return transformX(op, otherOp)[0];
    } else {
      return transformX(otherOp, op)[1];
    }
  }
}
