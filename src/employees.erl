-module(employees).
-export([salary/1]).

salary({internal, Base}) -> Base;
salary({external, Base, CommissionBase, CommissionRate}) -> Base + CommissionBase*CommissionRate.