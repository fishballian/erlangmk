-module(foo).
-export([bar/0]).
-behaviour(bar).
-include("foo.hrl").

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").
-endif.

bar() ->
    ?XXX.

-ifdef(TEST).
bar_test_() ->
    [?_assertEqual(xxx1, bar())].
-endif.
