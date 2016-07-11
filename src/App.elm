module App exposing (..)

import State exposing (..)
import View exposing (..)
import Html.App

main : Program Never
main = 
    Html.App.program 
       {
        init = State.init
        , update = State.update
        , subscriptions = State.subscriptions
        , view = View.root
       }
