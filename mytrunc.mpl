mytrunc := proc (x, t) local q, y; if x <> 0 then q := floor(log10(abs(x)))+1;
y := x*10^(t-q); return evalf[t](trunc(y)*10^(q-t)); else return 0
end if end proc;
