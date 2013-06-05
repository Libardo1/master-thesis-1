input metauml;
beginfig(1);
    Package.G("GUI")();
    Package.W("Watcher")();
    Package.C("Client")();
    leftToRight(30)(G, W);
    topToBottom(50)(G, C);
    Component.Client("Client")(G, W, C);
    drawObject(Client);
    link(associationUni)(G.s -- C.n);
    link(associationUni)(pathStepX(W.s, C.e, 20));
endfig;
end