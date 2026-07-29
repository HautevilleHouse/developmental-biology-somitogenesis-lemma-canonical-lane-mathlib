import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean

structure ClockWavefrontPackage where
  oscillatorPeriod : Prop
  wavefrontSpeed : Prop
  gradientThreshold : Prop
  clockWavefrontCoupling : Prop

structure ClockWavefrontEvidence (C : ClockWavefrontPackage) where
  oscillatorPeriodClosed : C.oscillatorPeriod
  wavefrontSpeedClosed : C.wavefrontSpeed
  gradientThresholdClosed : C.gradientThreshold
  clockWavefrontCouplingClosed : C.clockWavefrontCoupling

def ClockWavefrontClosed (C : ClockWavefrontPackage) : Prop :=
  C.oscillatorPeriod ∧ C.wavefrontSpeed ∧ C.gradientThreshold ∧ C.clockWavefrontCoupling

theorem clock_wavefront_closed_from_evidence (C : ClockWavefrontPackage) (E : ClockWavefrontEvidence C) :
    ClockWavefrontClosed C := by
  exact And.intro E.oscillatorPeriodClosed (And.intro E.wavefrontSpeedClosed (And.intro E.gradientThresholdClosed E.clockWavefrontCouplingClosed))

end DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean
end HautevilleHouse