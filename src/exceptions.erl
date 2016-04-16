-module(exceptions).
-export([normal_result/0, exit_result/0, throw_result/0, error_result/0, catcher_normal/0, catcher_exit/0, catcher_throw/0, catcher_error/0]).

normal_result() -> hello.
exit_result() -> exit(e).
throw_result() -> throw(e).
error_result() -> erlang:error(e).

catcher_normal() ->
	try normal_result() of
		Val -> {normal, Val}
	catch
		throw:X -> {caught, thrown, X};
		exit:X -> {caught, exited, X};
		error:X -> {caught, error, X}
	end.
	
catcher_exit() ->
	try exit_result() of
		Val -> {normal, Val}
	catch
		throw:X -> {caught, thrown, X};
		exit:X -> {caught, exited, X};
		error:X -> {caught, error, X}
	end.

catcher_throw() ->
	try throw_result() of
		Val -> {normal, Val}
	catch
		throw:X -> {caught, thrown, X};
		exit:X -> {caught, exited, X};
		error:X -> {caught, error, X}
	end.

catcher_error() ->
	try error_result() of
		Val -> {normal, Val}
	catch
		throw:X -> {caught, thrown, X};
		exit:X -> {caught, exited, X};
		error:X -> {caught, error, X}
	end.