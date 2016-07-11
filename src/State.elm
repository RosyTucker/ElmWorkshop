module State exposing (..)

import HackerNewsApi exposing (..)
import Types exposing (..)

init : ( Model, Cmd Msg )
init =
    ({ news = [] 
     , error = Nothing
     }
    , getNews
    )

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GetNewsResponse (Err errorMessage) ->
            ( { model | error = Just errorMessage }
            , Cmd.none
            )
        GetNewsResponse (Ok updatedNews) ->
            ( { model | error = Nothing, news = updatedNews }
            , Cmd.none
            )
 
subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
