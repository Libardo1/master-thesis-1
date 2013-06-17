input metauml;
beginfig(1);
    Package.C("Crawler")();
    Package.R("Recommender")();
    Package.P("Provider")();
    leftToRight(20)(C, R, P);
    Package.D("Database")();
    topToBottom(70)(R, D);
    Component.S("Server")(C, R, P, D);
    drawObject(S);
    link(association)(pathManhattanX(D.w, C.s));
    link(association)(D.n -- R.s);
    link(association)(rpathManhattanX(D.e, P.s));
endfig;
end