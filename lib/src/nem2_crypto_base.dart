part of nem2_crypto;

// Magic constants
var baseX =  BigInt.parse("15112221349535400772501151409588531511454012693041857206046113283949847762202");

var baseY = BigInt.parse("46316835694926478169428394003475163141307993866256225615783033603165251855960");

var d = BigInt.parse("37095705934669439343138083508754565189542113879843219016388785533085940283555");

var I = BigInt.parse("19681161376707505956807079304988542015446066515923890162744021073123829784752");

var primeL = BigInt.parse("7237005577332262213973186563042994240857116359379907606001950938285454250989");

var primeQ = BigInt.parse("57896044618658097711785492504343953926634992332820282019728792003956564819949");

var basePoint = [baseX % primeQ, baseY % primeQ];