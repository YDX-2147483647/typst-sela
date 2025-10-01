#import "/src/lib.typ": any, sel

#assert-panic(() => {
  sel(
    heading.where(level: any(1, 2, 3, key: "value")),
  )
})

#assert-panic(() => {
  sel(heading.where(level: any()))
})

#assert-panic(() => {
  sel(heading)
})
