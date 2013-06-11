input metauml;
beginfig(1);
    Class.T("TsunapperClient")
    ("+url: String")
    ("+rate(a: App, u: User)",
     "+getRecommendations(u: User): List[App]",
     "+register(u: User, info: UserInfo)");
    drawObjects(T);
endfig;
end