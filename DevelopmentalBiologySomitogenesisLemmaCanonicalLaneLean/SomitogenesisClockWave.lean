import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean

structure ClockWavePackage where
  oscillatoryGeneExpression : Prop
  wavefrontPropagation : Prop
  travelingWaveSolution : Prop
  phaseGradientMaintained : Prop

structure ClockWaveEvidence (C : ClockWavePackage) where
  oscillatoryGeneExpressionClosed : C.oscillatoryGeneExpression
  wavefrontPropagationClosed : C.wavefrontPropagation
  travelingWaveSolutionClosed : C.travelingWaveSolution
  phaseGradientMaintainedClosed : C.phaseGradientMaintained

def ClockWaveClosed (C : ClockWavePackage) : Prop :=
  C.oscillatoryGeneExpression ∧ C.wavefrontPropagation ∧ C.travelingWaveSolution ∧ C.phaseGradientMaintained

theorem clockwave_closed_from_evidence (C : ClockWavePackage) (E : ClockWaveEvidence C) : ClockWaveClosed C := by
  exact And.intro E.oscillatoryGeneExpressionClosed (And.intro E.wavefrontPropagationClosed (And.intro E.travelingWaveSolutionClosed E.phaseGradientMaintainedClosed))

end DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean
end HautevilleHouse