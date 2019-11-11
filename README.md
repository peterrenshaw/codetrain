```
                  ___            
  _________  ____/ (_)___  ____ _
 / ___/ __ \/ __  / / __ \/ __ `/
/ /__/ /_/ / /_/ / / / / / /_/ / 
\___/\____/\__,_/_/_/ /_/\__, /  
                        /____/   
        __          ____                    
  _____/ /_  ____ _/ / /__  ____  ____ ____ 
 / ___/ __ \/ __ `/ / / _ \/ __ \/ __ `/ _ \
/ /__/ / / / /_/ / / /  __/ / / / /_/ /  __/
\___/_/ /_/\__,_/_/_/\___/_/ /_/\__, /\___/ 
                               /____/       
   ___         ____ 
  <  /        / __ \
  / /        / / / /
 / /   _    / /_/ / 
/_/   (_)   \____/  
                    
```



#### 2019NOV11
* Build something using Elm and SVG
  (or any library that lets me create SVG)
- lets build a bullseye.


* upload to github
- bullseye 

![Bullseye](https://github.com/peterrenshaw/codetrain/blob/master/1.0/bullseye.png "Bullseye")

#### 2019NOV09

* working observation:
```
  read, think then write code
  :ElmMake to check it works in vim
  ./g.sh -i src/Main.elm -a 
  python -m http.server 5000
```

* Issue with MacCASOutreach book on elm and graphicssvg
- Wrote a issue at <https://github.com/MacCASOutreach/eBook/issues/1>
- <https://github.com/MacCASOutreach/eBook/blob/master/ThinkingAlgebraicallyWithElm.pdf>


> Working code examples required

> Fistly this is a great read and "Thinking Algebraiclly WIth Elm" only decent text I've found on GraphicSVG and Elm .

> I have found a problem with the code examples, (no import statements) I understand why, page space is limited. This does nothing for the reader. Do you think a future link to working code will be included?

#### What I found
> Going through the examples in Ch5 and even the simplest of examples at P31 require you to understand and dig through the APIs to work out the import statements.

> So instead of:

```
 -- CH5, P30 
 main = graphicsApp { view = view }
 view = collage 300 300 []
```

> readers need the following:

```
-- CH5, P30 working example
module Main exposing (main)

import GraphicSVG exposing (circle, collage, filled, red, scale)
import GraphicSVG.App exposing (graphicsApp)



-- MAIN


main =
    graphicsApp { view = view }



-- VIEW


view =
    collage 300
        300
        [ circle 25
            |> filled red
        ]
```

> I've left the spacing in using elm-format to give you an idea of how the formatter displays the code. Working code examples help. Code comprehension and presentation go hand in hand.

* wrote some code that compiles
- using:
  
   <https://github.com/MacCASOutreach/eBook/blob/master/ThinkingAlgebraicallyWithElm.pdf>
   <https://package.elm-lang.org/packages/MacCASOutreach/graphicsvg/latest/GraphicSVG-App>
   <https://package.elm-lang.org/packages/MacCASOutreach/graphicsvg/>


2019NOV08
* uninstall is impressive
- <https://github.com/elm/compiler/blob/master/installers/mac/README.md#uninstall>

* purple
- 138,43,226
- 230, 230, 250

* try some demo code

  module Main exposing (main)

  import Html exposing (Html)
  import Svg exposing (..)
  import Svg.Attributes exposing (..)


  main =
      svg
          [ viewBox "0 0 400 400"
          , width "400"
          , height "400"
          ]
          [ circle
              [ cx "50"
              , cy "50"
              , r "40"
              , fill "purple"
              , stroke "purple"
              , strokeWidth "3"
              ]
              []
          ]

* install latest svg package

  $ elm install elm/svg

* find latest svg package
- <https://package.elm-lang.org/packages/elm/svg/latest/>


