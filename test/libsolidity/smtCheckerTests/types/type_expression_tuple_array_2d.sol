pragma experimental SMTChecker;
contract C {

function f() public pure { (int[][]); }

}
// ----
// Warning 6133: (73-82): Statement has no effect.
// Warning 8364: (74-79): Assertion checker does not yet implement type type(int256[] memory)
// Warning 8364: (74-81): Assertion checker does not yet implement type type(int256[] memory[] memory)
// Warning 8364: (73-82): Assertion checker does not yet implement type type(int256[] memory[] memory)
