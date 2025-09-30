#import "lib.typ": sel, any

#sel(heading.where(level: any(1, 2, 3), numbering: any("1.1", "A.1")))

#show sel(heading.where(level: any(..range(1, 4)))): set text(red)
= 甲
== 乙
=== 丙
==== 丁

#show sel(figure.where(kind: any(table, "atom"))): set figure.caption(
  position: top,
)
#figure(table[Table], caption: [caption])
#figure(circle(), caption: [caption], kind: "atom", supplement: "Atom")
#figure(rect[Image], caption: [caption])

#{
  // sel(table.cell.where(x: any(1, 4), y: any(1, 2)), debug: true) //: set text("bold")

  let t = table.cell.where(x: 1) == grid.cell.where(x: 1)
  grid.cell.where(x: 2)
}

#show selector.or(
  ..(1, 2, 3).map(n => heading.where(level: n)),
): set align(center)


#let t-1 = table.cell.where(x: 1)
#let g-1 = grid.cell.where(x: 1)
#let g-2 = grid.cell.where(x: 2)

#repr(t-1) == #repr(g-1)
#assert.ne(t-1, g-1)
#assert.eq(g-1, g-1)
#assert.ne(g-1, g-2)
