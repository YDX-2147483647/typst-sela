#import "/src/lib.typ": any, sel

#assert.eq(
  heading.where(level: any(1, 2, 3)),
  heading.where(level: metadata((1, 2, 3))),
)

#assert.eq(
  sel(heading.where(level: any(3, "nonsense", "values"))),
  selector.or(
    heading.where(level: 3),
    heading.where(level: "nonsense"),
    heading.where(level: "values"),
  ),
)
