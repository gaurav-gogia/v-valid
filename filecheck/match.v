module filecheck

pub fn checkpdf(buf string) bool {
	if buf.len <= 3 {
		return false
	}
	return check(buf, pdf)
}

fn checkbmp(buf string) bool {
	if buf.len <= 1 {
		return false
	}
	return check(buf, bmp)
}

fn checkpng(buf string) bool {
	if buf.len <= 3 {
		return false
	}
	return check(buf, png)
}

fn checkgif(buf string) bool {
	if buf.len <= 2 {
		return false
	}
	return check(buf, gif)
}

fn checkjpeg(buf string) bool {
	if buf.len <= 2 {
		return false
	}
	return check(buf, jpeg)
}

fn checkjpeg2000(buf string) bool {
	if buf.len <= 12 {
		return false
	}
	return check(buf, jpeg2000)
}

fn checkwebp(buf string) bool {
	return buf.len > 11 && buf[8] == webp[0] && buf[9] == webp[1] && 
	buf[10] == webp[2] && buf[11] == webp[3]
}

fn check(buf string, typebuf []int) bool {
	mut ans := false
	for i := 0; i < typebuf.len; i++ {
		ans = buf[i] == typebuf[i]
	}
	return ans
} 