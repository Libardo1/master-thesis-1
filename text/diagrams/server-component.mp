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
    link(composition)(D.w -- C.s);
    link(composition)(D.n -- R.s);
    link(composition)(D.e -- P.s);
endfig;
end