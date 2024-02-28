Space = [-500 * ones(1, 10); 500 * ones(1, 10)]; 
for j = 1:5
Pop = genrpop(20, Space);
    masiv = [];
    masiv2= [];
    for i = 1:500
        Fit = testfn3(Pop);
        Best = selbest(Pop, Fit, [2 1 1]);
        Newpop = mutx(Pop, 0.1, Space);
        Pop = [Newpop; Best];
        masiv = [masiv; i];
        masiv2 = [masiv2; min(testfn3(Pop))];
        plot(masiv, masiv2, 'r');
        hold on;
    end
end
