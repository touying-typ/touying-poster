#import "@preview/octique:0.1.0": octique-inline

#set page("a5", margin: 40pt, height: auto)
#set text(font: "Fira Sans")
#set par(justify: true)

#box(text(font: "PangMenZhengDao-XiXian", size: 85pt)[投], baseline: -4pt) #text(fill: blue, size: 60pt)[*Touy*]#text(
  fill: rgb("#143345"),
  size: 60pt,
)[*ing*]

#v(-4pt)

#upper(text(size: 24pt)[*Give a Presentation in Typst*])

#v(-20pt)

#text(
  fill: gray,
  size: 12pt,
)[Touying is a user-friendly, powerful and efficient package for creating presentation slides in Typst.]

#set text(size: 10pt)

#let cell(title, body) = [
  #rect(width: 100%, radius: 4pt, inset: 6pt, stroke: none, fill: blue)[
    #set text(fill: white, size: 14pt, weight: "medium")
    #set align(center + horizon)
    #title
  ]

  #v(-6pt)

  #rect(width: 100%, radius: 4pt, inset: 14pt, stroke: none, fill: luma(90%))[
    #set par(justify: false)

    #body
  ]
]

#grid(
  columns: (43%, 1fr),
  gutter: 6pt,
)[
  #cell[
    1. Install Simply
  ][
    ```typ
    1. Just use the Web App:
       https://typst.app/

    2. Or use Typst locally:

      - Install VS Code

      - Install Tinymist
    ```

    #v(14.5pt)
  ]
][
  #cell[
    2. Split by Headings
  ][
    #grid(
      columns: 2,
      gutter: 5pt,
    )[
      ```typ
      == First Title

      Text for the first slide.

      == Second Title

      Text for the second slide.
      ```
    ][
      #v(-2pt)

      #rect(width: 66pt, fill: white, stroke: blue, radius: 3pt)[
        #set text(7pt)

        = First Title

        #line(length: 100%, stroke: black)

        Text for the first slide.
      ]

      #rect(width: 66pt, fill: white, stroke: blue, radius: 3pt)[
        #set text(7pt)

        = Second Title

        #line(length: 100%, stroke: black)

        Text for the first slide.
      ]
    ]
  ]
]

#show raw.where(block: true): block.with(height: 36pt)

#cell[
  3. Math, Layout, Programming and Animation
][
  #grid(
    columns: (1fr,) * 4,
    gutter: 5pt,
  )[
    ```typ
    // Math
    $ E = m c^2 $
    ```

    #rect(width: 100%, height: 42pt, fill: white, stroke: blue, radius: 3pt)[
      #set text(7pt)

      = Math

      #set text(12pt)

      $ E = m c^2 $
    ]
  ][
    ```typ
    // Layout
    #slide(
    composer: (2fr, 1fr))[A][B]
    ```

    #rect(width: 100%, height: 42pt, fill: white, stroke: blue, radius: 3pt)[
      #set text(7pt)

      = Layout

      #set text(12pt)

      #table(columns: (2fr, 1fr))[A][B]
    ]
  ][
    ```typ
    // Programming
    $ cos(0) = #calc.cos(0) $
    ```

    #rect(width: 100%, height: 42pt, fill: white, stroke: blue, radius: 3pt)[
      #set text(7pt)

      = Layout

      #set text(12pt)

      $ cos(0) = #calc.cos(0) $
    ]
  ][
    ```typ
    // Animation
    First #pause Second
    ```

    #rect(width: 100%, height: 42pt, fill: white, stroke: blue, radius: 3pt)[
      #set text(7pt)

      = Animation

      #set text(9.5pt)

      First

      #v(-8pt)

      #line(length: 100%)

      #v(-8pt)

      First Second
    ]
  ]
]

#[
  #show raw.where(block: true): block.with(height: 4pt)
  #show raw: set text(weight: "bold")
  #show image: block.with(radius: 2pt, stroke: blue, clip: true)

  #cell[
    1. Beautiful Themes and Simple Customization
  ][
    #grid(
      columns: (1fr,) * 4,
      gutter: 5pt,
    )[
      ```typ
      1. Aqua
      ```

      #image("images/aqua.png")
    ][
      ```typ
      2. Metropolis
      ```

      #image("images/metropolis.png")
    ][
      ```typ
      3. University
      ```

      #image("images/university.png")
    ][
      ```typ
      4. Stargazer
      ```

      #image("images/stargazer.png")
    ]
  ]
]

#v(-6pt)

#set text(9pt)

MIT License #sym.copyright 2024
#h(1fr)
#octique-inline("mark-github", baseline: 1pt) https://github.com/touying-typ/touying
