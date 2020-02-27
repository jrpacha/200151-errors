myround := proc (x, t) local q, y; if x <> 0 then q := floor(log10(abs(x)))+1;
y := x*10^(t-q); y := round(y); y := evalf(y*10^(q-t)); return y else return 0
end if end proc;
