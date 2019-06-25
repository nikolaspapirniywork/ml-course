X = [1 2; 3 4]

for i = 1:2
  for j = 1:2
    i
    j
    A(i, j) = log(X(i, j));
    B(i, j) = X(i, j) ^ 2;
    C(i, j) = X(i, j) + 1;
    D(i, j) = X(i, j) / 4;
  end
end