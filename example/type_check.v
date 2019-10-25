/*
	Basic library usage example. This will help in finding
	out what type of file you are dealing with.
*/

import valid

fn main() {
	path := "../data/sctest"
	ans := valid.which_type(path) or {
		println(err)
		return
	}
	println('We are dealing with $ans type of file here!')
}