/*
	Basic library usage example. This will help in checking
	whether a file is an image or not
*/

import valid

fn main() {
	path := "../data/sctest"
	println('Is this file an image?')

	ans := filecheck.is_image(path) or {
		println(err)
		return
	}
	
	if ans {
		println('Answer: Yes')
	} else {
		println('Answer: No')
	}
}