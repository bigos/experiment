module Main exposing (Model, Msg(..), main, subscriptions, update, view)

import Browser exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Http
import Json.Decode exposing (Decoder, field, string)



-- MAIN


main =
    Browser.document
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }



-- MODEL


type alias Model =
    { message : String
    , code : Int
    }


type alias Flags =
    --empty tuple
    ()


init : Flags -> ( Model, Cmd Msg )
init flags =
    ( { message = "Hi"
      , code = 0
      }
    , Cmd.none
    )



-- UPDATE


type Msg
    = Reset
    | MorePlease



-- update : Msg -> Model -> ( Model, Cmd Msg )


update msg model =
    case msg of
        Reset ->
            ( model, Cmd.none )

        MorePlease ->
            ( model, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view model =
    { title = "My first title"
    , body =
        [ div [] [ text "Hurrah!!!" ]
        , div []
            [ text "I could not load a random cat for some reason. "
            , button [ onClick MorePlease ] [ text "Try Again!" ]
            ]
        ]
    }
