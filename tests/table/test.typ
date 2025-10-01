#import "/src/lib.typ": any, sel
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

    // Copied from https://typst.app/docs/guides/table-guide/#fills
    table.header[Month][Title][Author][Genre],
    table.hline(stroke: 0.5pt),
    [January], [The Great Gatsby], [F. Scott Fitzgerald], [Classic],
    [February], [To Kill a Mockingbird], [Harper Lee], [Drama],
    [March], [1984], [George Orwell], [Dystopian],
    [April], [The Catcher in the Rye], [J.D. Salinger], [Coming-of-Age],
  )
}
