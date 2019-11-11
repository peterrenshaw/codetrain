-- #=========
-- # name: Main.elm
-- # date: 2019NOV11
-- # prog: pr
-- # desc: Lets build something using Elm and SVG (or any library that lets me create SVG)
-- #       Build a bullseye.
-- # deps: elm install MacCASOutreach/graphicsvg
-- # sorc: <https://github.com/MacCASOutreach/eBook/blob/master/ThinkingAlgebraicallyWithElm.pdf>
-- #       <https://package.elm-lang.org/packages/MacCASOutreach/graphicsvg/latest/GraphicSVG-App>
-- #=========


module Main exposing (main)

import GraphicSVG exposing (circle, collage, filled, move, red, rgba, scale)
import GraphicSVG.App exposing (graphicsApp)



-- MAIN


main =
    graphicsApp { view = view }



-- VIEW


view =
    collage 100
        100
        [ circle 35
            |> filled (rgba 0 0 255 1)
            |> move ( 10, 0 )
        , circle 25
            |> filled (rgba 255 255 255 1)
            |> move ( 10, 0 )
        , circle 15
            |> filled (rgba 255 0 0 1)
            |> move ( 10, 0 )
        ]
