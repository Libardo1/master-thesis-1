input metauml;
beginfig(1);
 		Class.S("AppAnnieSpider")
 		("+name: string", 
 		 "+start_urls: List[string]")
 		("+parse(response: Response): AppItem");
 		Class.I("AppItem")
 		("+name: string",
 		 "+description: string",
 		 "+category: string",
 		 "+url: string",
 		 "+installs: int",
 		 "+rating: float",
 		 "+icon_url: string",
 		 "screenshot_urls: List[string]")
 		();
 		Class.P("AppPipeline")
 		()
 		("+process_item(item: Item, spider: Spider): Item");
 		leftToRight(20)(I, P);
 		topToBottom(50)(I, S);
    drawObjects(S, I, P);
endfig;
end