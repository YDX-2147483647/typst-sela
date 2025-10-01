#import "/src/lib.typ": any, sel
#set page(height: auto, width: 240pt, margin: 15pt)

#show sel(
  figure.where(kind: any(table, "atom")),
): set figure.caption(position: top)

#figure(
  table[Table],
  caption: [caption],
)

#figure(
  circle(),
  caption: [caption],
  kind: "atom",
  supplement: "Atom",
)

#figure(
  rect[Image],
  caption: [caption],
)
