module filecheck

import os

// is_pdf function determines if a file is of type pdf or not by using its magic bytes
pub fn is_pdf(path string) ?bool {
	buf := os.read_file(path) or {
		return error(err)
	}
	return checkpdf(buf)
}

// is_image function determines if a file is an image or not by using its magic bytes
pub fn is_image(path string) ?bool {
	buf := os.read_file(path) or {
		return error(err)
	}
	return checkbmp(buf) || checkpng(buf) || checkgif(buf) || 
	checkjpeg(buf) || checkjpeg2000(buf) || checkwebp(buf)
}

// is_png function determines if a file is of type png or not by using its magic bytes
pub fn is_png(path string) ?bool {
	buf := os.read_file(path) or {
		return error(err)
	}
	return checkpng(buf)
}

// is_bmp function determines if a file is of type bmp or not by using its magic bytes
pub fn is_bmp(path string) ?bool {
	buf := os.read_file(path) or {
		return error(err)
	}
	return checkbmp(buf)	
}

// is_jpg function determines if a file is of type jpg or not by using its magic bytes
// the function will work for both jpeg & jpeg2000 type files
pub fn is_jpg(path string) ?bool {
	buf := os.read_file(path) or {
		return error(err)
	}
	return checkjpeg(buf) || checkjpeg2000(buf)	
}

// is_gif function determines if a file is of type gif or not by using its magic bytes
pub fn is_gif(path string) ?bool {
	buf := os.read_file(path) or {
		return error(err)
	}
	return checkgif(buf)
}

// is_webp function determines if a file is of type webp or not by using its magic bytes
pub fn is_webp(path string) ?bool {
	buf := os.read_file(path) or {
		return error(err)
	}
	return checkwebp(buf)
}

// which_type function determines the type of file by using its magic bytes and then returns
// the response as a string. It generates an error if the type is unknown
pub fn which_type(path string) ?string {
	buf := os.read_file(path) or {
		return error(err)
	}	
	if checkbmp(buf) {
		return "bmp/image"
	} else if checkgif(buf) {
		return "gif/image"
	} else if checkpng(buf) {
		return "png/image"
	} else if checkjpeg(buf) {
		return "jpeg/image"
	} else if checkjpeg2000(buf) {
		return "jpeg2000/image"
	} else if checkwebp(buf) {
		return "webp/image"
	} else if checkpdf(buf) {
		return "pdf/archive"
	} else {
		return error('uknown type .--.')
	}
}