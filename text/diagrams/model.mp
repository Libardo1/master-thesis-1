input metauml;
beginfig(1);
    Class.C("Category")("+name: string")();
    Class.I("Image")("+url: string")();
    Class.R("Rating")("+rating: float", 
    									"+count: float")();
    Class.A("App")("+name: string", 
    							  "+description: string",
    							  "+url: string", 
    							  "+category: Category", 
    							  "+installs: int",
    							  "+rating: Rating",
    							  "+icon: Image", 
    							  "+screenshots: List[Image]")();
    Class.AR("AppRating")("+app: App", 
    											"+rating: float")();
    Class.U("User")("+name: string",
    								"+ratings: List[AppRating]")();
    leftToRight(20)(C, I, R);
    topToBottom(70)(I, A);
    leftToRight(40)(A, AR);
    topToBottom(70)(AR, U);
    drawObjects(C, I, R, A, AR, U);
    
    link(composition)(pathManhattanY(C.s, A.w));
    link(composition)(I.s -- A.n);
    link(composition)(pathManhattanX(R.s, A.ne));
    link(composition)(A.e -- AR.w);
    link(composition)(AR.s -- U.n);
endfig;
end