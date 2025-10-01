#import "/src/lib.typ": any, sel

#assert.eq(
  sel(
    heading.where(level: any(1, 2, 3)),
  ),
  selector.or(
    heading.where(level: 1),
    heading.where(level: 2),
    heading.where(level: 3),
  ),
)

#assert.eq(
  sel(
    heading.where(level: any(..range(1, 4))),
  ),
  selector.or(
    heading.where(level: 1),
    heading.where(level: 2),
    heading.where(level: 3),
  ),
)

#assert.eq(
  sel(
    figure.where(kind: any(table, "atom")),
  ),
  selector.or(
    figure.where(kind: table),
    figure.where(kind: "atom"),
  ),
)

#assert.eq(
  sel(
    table.cell.where(x: any(1, 2), y: any(..range(1, 5))),
  ),
  selector.or(
    table.cell.where(x: 1, y: 1),
    table.cell.where(x: 2, y: 1),
    table.cell.where(x: 1, y: 2),
    table.cell.where(x: 2, y: 2),
    table.cell.where(x: 1, y: 3),
    table.cell.where(x: 2, y: 3),
    table.cell.where(x: 1, y: 4),
    table.cell.where(x: 2, y: 4),
  ),
)

#assert.eq(
  selector.or(
    sel(heading.where(level: any(2, 3))),
    <appendix>,
    <postscript>,
  ),
  selector.or(
    selector.or(
      heading.where(level: 2),
      heading.where(level: 3),
    ),
    <appendix>,
    <postscript>,
  ),
)

#assert.eq(
  selector.or(
    sel(heading.where(level: any(2, 3))),
    <appendix>,
    <postscript>,
  ),
  selector.or(
    selector.or(
      heading.where(level: 2),
      heading.where(level: 3),
    ),
    <appendix>,
    <postscript>,
  ),
)
#assert.eq(
  sel(heading.where(level: any(2, 3))).or(
    <appendix>,
    <postscript>,
  ),
  selector.or(
    selector.or(
      heading.where(level: 2),
      heading.where(level: 3),
    ),
    <appendix>,
    <postscript>,
  ),
)

#assert.eq(
  sel(
    grid.cell.where(x: any(1, 2)),
    scope: (cell: grid.cell),
  ),
  selector.or(
    grid.cell.where(x: 1),
    grid.cell.where(x: 2),
  ),
)

#assert.eq(
  sel(
    heading.where(level: any(1, 2, 3), numbering: any("1.1", "A.1")),
  ),
  selector.or(
    heading.where(level: 1, numbering: "1.1"),
    heading.where(level: 2, numbering: "1.1"),
    heading.where(level: 3, numbering: "1.1"),
    heading.where(level: 1, numbering: "A.1"),
    heading.where(level: 2, numbering: "A.1"),
    heading.where(level: 3, numbering: "A.1"),
  ),
)
