-module(case_if_expressions).
-export([make_test/2, make_test_case/2, make_test_case_tail_recursive/2, make_test_if/2]).

make_test(F, [H|T]) -> make_test_aux(F(H), H, T, F);
make_test(_F, []) -> [].

make_test_aux(true, H, T, F) -> [H|make_test(F,T)];
make_test_aux(false, _H, T, F) -> make_test(F,T).

make_test_case(F, [H|T]) ->
	case F(H) of
		true -> [H|make_test_case(F,T)];
		false -> make_test_case(F,T)
	end;
make_test_case(_F, []) ->
	[].

make_test_case_tail_recursive(F, L)	-> make_test_case_tail_recursive_aux(F, L, []).

make_test_case_tail_recursive_aux(F, [H|T], Res) ->
	case F(H) of
		true -> make_test_case_tail_recursive_aux(F, T, [H|Res]);
		false -> make_test_case_tail_recursive_aux(F, T, Res)
	end;
make_test_case_tail_recursive_aux(_F, [], Res) ->
	lists:reverse(Res).

make_test_if(F, [H|T]) ->
    X = F(H),
	if
		X =:= true ->
			[H|make_test_if(F,T)];
		true ->
			make_test_if(F, T)
	end;
make_test_if(_F, []) ->
	[].
	