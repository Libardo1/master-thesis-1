input metauml;
beginfig(1);

	hPadding:=75;
	vPadding:=30;

	Activity.spider("start spider");
	Activity.sa("create recommendations");
	Activity.sleep("sleep");

	Begin.b;
	Activity.watcher("start Watcher");
	Branch.firstStart;
	Activity.readUser("fetch user data");
	Activity.subData("submit user data");
	Activity.reqRec("request recommendations");
	Activity.disRec("display recommendations");
	End.e;

	leftToRight(hPadding)(spider, b);	
	topToBottom(vPadding)(spider, sa, sleep);
	
	topToBottom(vPadding)(b, watcher, firstStart, reqRec, disRec, e);
	leftToRight(hPadding)(firstStart, readUser);
	topToBottom(vPadding)(readUser, subData);
	
	drawObjects(spider, sa, sleep, b, watcher, firstStart, readUser, subData, reqRec, disRec, e);
	
	clink(transition)(spider, sa);	
	clink(transition)(sa, sleep);
	
	clink(transition)(b, watcher);
	clink(transition)(watcher, firstStart);
	clink(transition)(firstStart, reqRec);
	clink(transition)(reqRec, disRec);
	clink(transition)(disRec, e);
	
	clink(transition)(firstStart, readUser);
	clink(transition)(readUser, subData);
	clink(transition)(subData, reqRec);
	
	item(iGuard)("Submit user data?")(obj.e = firstStart.w - (5, 0));
	item(iGuard)("Yes")(obj.e = readUser.w - (30, 10));
	item(iGuard)("No")(obj.s = reqRec.nw + (45, 15));
endfig;
end