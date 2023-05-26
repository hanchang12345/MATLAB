function F2C()
while 1
% disp("give me a Fahrenheit");
a=('temprature in F is: ');
F=input(a);
    if(isempty(F))
        break;
    else
        C=5/9*(F-32);
        fprintf('C=%2.2f\n',C);
end

end