module Types exposing (..)

type alias Model = 
  { news : List News }

type alias News =
  { headline:  String }

type Msg = 
  NoOp
