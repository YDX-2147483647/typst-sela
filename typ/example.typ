#import "lib.typ": any, sel

#sel(heading.where(level: any(1, 2, 3), numbering: any("1.1", "A.1")))

#show sel(
  heading.where(level: any(..range(1, 4))),
): set align(center)
= 甲
== 乙
=== 丙
==== 丁

#show sel(
  figure.where(kind: any(table, "atom")),
): set figure.caption(position: top)
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


#set page(height: auto, width: 400pt, margin: 15pt)
#{
  show table.cell.where(y: 0): set text(weight: "bold")
  show sel(
    table.cell.where(x: any(1, 2), y: any(..range(1, 5))),
  ): set text(style: "italic")

  table(
    columns: 4,
    fill: (rgb("EAF2F5"), none),
    stroke: none,

    table.header[Month][Title][Author][Genre],
    table.hline(stroke: 0.5pt),
    [January], [The Great Gatsby], [F. Scott Fitzgerald], [Classic],
    [February], [To Kill a Mockingbird], [Harper Lee], [Drama],
    [March], [1984], [George Orwell], [Dystopian],
    [April], [The Catcher in the Rye], [J.D. Salinger], [Coming-of-Age],
  )
}

#selector.or(
  sel(heading.where(level: any(2, 3))),
  <appendix>,
  <postscript>,
)
