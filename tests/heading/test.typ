#import "/src/lib.typ": any, sel
#set page(height: auto, width: 240pt, margin: 15pt)

#show sel(
  heading.where(level: any(..range(1, 4))),
): set align(center)

= A
== B
=== C
==== D
