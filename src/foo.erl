-module(foo).
-export([bar/0]).
-behaviour(bar).
-include("foo.hrl").
bar() ->
    ?XXX.
