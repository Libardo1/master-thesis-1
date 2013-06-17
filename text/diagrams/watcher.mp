input metauml;
beginfig(1);
    Class.W("Watcher")
    ()
    ("+getEmail(): String",
     "+getInstalledApps(): List[App]",
     "+getLocation(): Location");
    drawObjects(W);
endfig;
end