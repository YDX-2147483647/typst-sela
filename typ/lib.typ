#let any(..values) = {
  assert.eq(values.named(), (:))
  assert.ne(values.pos(), ())
  metadata(values.pos())
}

#let sel(target, debug: false) = {
  assert.eq(type(target), selector)
  let expr = repr(target)

  let matches = expr
    .matches(regex(`metadata\(value: \((.*?)\)\)`.text))
    .map(
      m => (
        any: m.text,
        values: m.captures.first().split(", "),
      ),
    )

  // Replace each `any` by any of its possible `values`
  let expanded = matches.fold(
    (expr,),
    (expanded, (any, values)) => values
      .map(v => expanded.map(e => e.replace(any, v, count: 1)))
      .flatten(),
  )

  if debug { expanded } else {
    selector.or(..expanded.map(eval))
  }
}
