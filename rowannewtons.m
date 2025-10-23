syms f(x)
f(x) = exp(x)-3;
g = diff(f);

f = matlabFunction(f);
g = matlabFunction(g);

nmax = 5; % This is the min number of iterations before it converges. 
tol = 1e-12;% tolerance
x = zeros(1, nmax);
x(1) = 1; %initial point

fk = f(x(1));
for k = 1:nmax
    if (abs(fk) < tol)
        break;
    end

    x(k+1) = x(k) - f(x(k))/g(x(k));
    fk = f(x(k));

end

x(k)