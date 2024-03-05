package closures

func closure() func() int {
	return func() int {
		return 1
	}
}