#let paper_title = "A Pragmatic Approach to Living in A Hut And Live Happily"
#set text(
  font: "CMU Serif",
  size: 10pt,
)

#set heading(numbering: "I.")

#show heading: it => [
  #set align(center)
  #set text(12pt, weight: "regular")
  #block(smallcaps(counter(heading).display()+ " " + it.body))
  #linebreak()
]

#show heading.where(
  level: 2
): it => text(
  size: 11pt,
  weight: "regular",
  style: "italic",
  linebreak() + linebreak() + counter(heading).display() + " " + it.body + linebreak() + linebreak(),
)

#show heading.where(
  level: 3
): it => text(
  size: 10pt,
  weight: "regular",
  style: "italic",
  linebreak() + linebreak() + counter(heading).display() + " " + it.body + linebreak() + linebreak(),
)


#set page(
    width: 8.5in,
    height: 11in,
    margin: (x: 0.625in, y: 0.75in),
    columns: 1,
)

#align(center)[#text(size: 14pt, font: "CMU Classical Serif")[*#paper_title*]]

#move(dx: -40pt, dy: 500pt)[
  #stack(
    dir: ltr,
    spacing: 1fr,
    rotate(270deg, origin: left)[#text(font: "CMU Classical Serif", size: 11pt)[#linebreak() #linebreak() #paper_title]]
  )
]
#columns(2, gutter: 11pt)[
  #set par(justify: true)
  = Introduction
  Mugen ni aru
  #lorem(150)
  == Where to live?
  #lorem(200)
  === Will you actually survive?
  #lorem(280)
]
