# Defined in - @ line 1
function wcdb --description 'alias wcdb=ssh -L 1530:orah819.sec-da-pro.web.audi.vwg:1530 -L 1531:orah803.sec-da-pro.web.audi.vwg:1530 ivwb2880'
	ssh -L 1530:orah819.sec-da-pro.web.audi.vwg:1530 -L 1531:orah803.sec-da-pro.web.audi.vwg:1530 ivwb2880 $argv;
end
