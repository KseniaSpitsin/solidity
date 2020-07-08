pragma experimental SMTChecker;

contract C
{
	function f(uint x) public pure {
		require(x < 100);
		for(uint i = 0; i < 10; ++i) {
			// Overflows due to resetting x.
			x = x + 1;
		}
		assert(x > 0);
	}
}
// ----
// Warning 1218: (176-181): Error trying to invoke SMT solver.
// Warning 2661: (176-181): Overflow (resulting value larger than 2**256 - 1) happens here
