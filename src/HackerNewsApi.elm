module HackerNewsApi exposing (..)

import Http exposing (..)
import Json.Decode exposing (..)
import Task
import Types exposing (..)

decodeNews : Decoder (List News)
decodeNews =
    "hits" := (list decodeNewsItem)

decodeNewsItem : Decoder (News)
decodeNewsItem =
    object1 News
        ("title" := Json.Decode.string)

getNews : Cmd Msg
getNews = 
    Http.get decodeNews "https://hn.algolia.com/api/v1/search_by_date?tags=story&hitsPerPage=50"
        |> Task.perform Result.Err Result.Ok
        |> Cmd.map GetNewsResponse
