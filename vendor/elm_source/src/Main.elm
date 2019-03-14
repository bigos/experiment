module Main exposing (Model, Msg(..), main, subscriptions, update, view)

import Browser exposing (..)
import Html exposing (..)



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
    | Foo



-- update : Msg -> Model -> ( Model, Cmd Msg )


update msg model =
    case msg of
        Reset ->
            ( model, Cmd.none )

        Foo ->
            ( model, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view model =
    { title = "My first title"
    , body =
        [ div [] [ text "hurray!!!" ]
        ]
    }
