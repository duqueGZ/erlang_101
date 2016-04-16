-module(acumuladores).
-export([split_list_values/2, split_list_values_acc/2]).

split_list_values(F, L) ->
	Valids = [X || X <- L, (F(X) =:= true)],
	NotValids = [X || X <- L, (F(X) =:= false)],
	{Valids, NotValids}.
	
split_list_values_acc(F, L) -> split_list_values_acc_aux(F, L, [], []).

split_list_values_acc_aux(F, [H|T], Valids, NotValids) ->
	case F(H) of
		true -> split_list_values_acc_aux(F, T, [H|Valids], NotValids);
		false -> split_list_values_acc_aux(F, T, Valids, [H|NotValids])
	end;
split_list_values_acc_aux(_F, [], Valids, NotValids) ->
	{Valids, NotValids}.