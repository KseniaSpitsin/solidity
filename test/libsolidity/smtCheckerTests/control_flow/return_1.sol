pragma experimental SMTChecker;

contract C {
	function add(uint x, uint y) internal pure returns (uint) {
		if (y == 0)
			return x;
		if (y == 1)
			return ++x;
		if (y == 2)
			return x + 2;
		return x + y;
	}

	function f() public pure {
		assert(add(100, 0) == 100);
		assert(add(100, 1) == 101);
		assert(add(100, 2) == 102);
		assert(add(100, 100) == 200);
	}
}
// ----
// Warning 2661: (158-161): Overflow (resulting value larger than 2**256 - 1) happens here
// Warning 2661: (187-192): Overflow (resulting value larger than 2**256 - 1) happens here
// Warning 2661: (203-208): Overflow (resulting value larger than 2**256 - 1) happens here
