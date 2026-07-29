import DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean

structure SomitogenesisEvidence where
  clockWavefront : Prop
  gradientThreshold : Prop
  notchOscillation : Prop
  mespActivation : Prop
  somiteBoundaryDetermination : Prop

def SomitogenesisEvidenceClosed (E : SomitogenesisEvidence) : Prop :=
  E.clockWavefront ∧ E.gradientThreshold ∧ E.notchOscillation ∧
  E.mespActivation ∧ E.somiteBoundaryDetermination

theorem somitogenesis_evidence_closed (E : SomitogenesisEvidence) :
    SomitogenesisEvidenceClosed E := by
  refine And.intro E.clockWavefront (And.intro E.gradientThreshold
    (And.intro E.notchOscillation (And.intro E.mespActivation E.somiteBoundaryDetermination)))

end DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean
end HautevilleHouse
