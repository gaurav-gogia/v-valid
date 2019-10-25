# filecheck
A simple library for validating &amp; checking file types. Written in [V](https://vlang.io/)

## Example
```go

# example/type_check.v

import filecheck

fn main() {
	path := "./data/sctest"
	ans := filecheck.which_type(path) or {
		println(err)
		return
	}
	println('We are dealing with $ans type of file here!')
}
```

## Usage
Some more examples are available in [examples](./example/) directory

## Contributing Guidelines
0. Star this repository
1. Fork this repository
2. Add magic numbers to the [const.v](./filecheck/const.v) file
3. Write match function in [match.v](./filecheck/match.v) file
4. Write wrapper function in [filecheck.v](./filecheck/filecheck.v) file
5. Commit your changes
6. Send a PR

### Notes
1. To find out header and footer values of other [file types](https://github.com/gaurav-gogia/filestructures) please look into this repo
2. You may also contribute to that repository to help others find file types

### Converting hex to decimal
```python3
>>> some_hex_array = [0x57, 0x45, 0x42, 0x50]
>>> some_hex_array
[87, 69, 66, 80]
```
