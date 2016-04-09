-module(erlangmk_app).
-behaviour(application).
-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-endif.
-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
	erlangmk_sup:start_link().

stop(_State) ->
	ok.
-ifdef(TEST).
app_test_() ->
    [?_assertEqual(1, 2)].
-endif.
