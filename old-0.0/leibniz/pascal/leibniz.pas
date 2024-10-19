program Leibniz;

function powersign(n: int64): int64;
begin
    if (n mod 2 = 0) then
        powersign := 1
    else
        powersign := -1;
end;

function leibniz(n: int64): double;
var
    s: double;
    i: int64;
begin
    s := 0;
    for i := 0 to n do s += powersign(i) / (2 * i + 1);
    leibniz := 4 * s;
end;

var
    n, code: int64;
begin
    val(paramstr(1), n, code);
    writeln(leibniz(n));
end.
