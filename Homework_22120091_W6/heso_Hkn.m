function [Hn] = heso_Hkn(n)
    Hn = ones(1, n+1);
    syms t;
    f = t;
    for j = 1:n
        f = f * (t - j);
    end
    for i = 0:n
        f = f / (t - i);
        Hn(i+1) = ((-1)^(n-i) * nchoosek(n, i)) / (n * factorial(n)) * int(f, t, 0, n);
    end
end
