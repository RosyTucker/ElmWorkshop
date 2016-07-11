module View exposing (..)

import Html exposing (..)
import Types exposing (..)

root : Model -> Html Msg
root model =
    div []
        [ h1 [] [ text "HN" ]
        , ul []
            (List.map newsItem model.news)
        ]
    
newsItem: News -> Html Msg
newsItem news =
     ul []
         [ h2 [] [ text news.headline ]
         ]
