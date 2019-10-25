/*
	Basic library usage example. This will help in checking
	whether a file is a pdf archive or not
*/

import filecheck

fn main() {
	path := "../data/coin.pdf"
	println('Is this file a pdf archive?')

	ans := filecheck.is_pdf(path) or {
		println(err)
		return
	}
	
	if ans {
		println('Answer: Yes')
	} else {
		println('Answer: No')
	}
}