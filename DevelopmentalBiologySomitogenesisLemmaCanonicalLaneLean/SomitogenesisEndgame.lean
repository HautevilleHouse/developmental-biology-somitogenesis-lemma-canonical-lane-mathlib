import canonicalLaneMathlib.AdmissibleClass
import SomitogenesisClockWave.lean
import SegmentFormationCore.lean
import GeneRegulatoryNetwork.lean
import SpatialGradient.lean

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean

def ConstrainedSomitogenesisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem somitogenesis_endgame (A : AdmissibleClass) :
    ConstrainedSomitogenesisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean
end HautevilleHouse