
func NutsLogger(@autoclosure message: () -> String) {
    if _isDebugAssertConfiguration() {
        if random() % 50 == 0 {
            print("peanuts trace")
            NutsLogger(message)
        }
	else {
            print(message())
	}
    }
}
