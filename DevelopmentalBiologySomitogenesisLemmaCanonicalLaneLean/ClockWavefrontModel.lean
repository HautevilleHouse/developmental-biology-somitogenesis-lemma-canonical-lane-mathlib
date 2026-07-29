import canonicalLaneMathlib.AdmissibleClass

/-!
# Clock and Wavefront Model for Somitogenesis

This module formalizes the clock-and-wavefront model for somitogenesis,
where a molecular oscillator (the segmentation clock) interacts with a
deterministic wavefront of maturation. The key ingredients are an
intrinsic timing signal and a spatial gradient that gates segmentation.
-/

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean

structure ClockWavefrontPackage where
  clockOscillatorPeriod : Prop
  wavefrontPosition : Prop
  somiteFormationTiming : Prop
  wavefrontVelocity : Prop
  periodMatchesTiming : Prop

structure ClockWavefrontEvidence (C : ClockWavefrontPackage) where
  clockOscillatorPeriodClosed : C.clockOscillatorPeriod
  wavefrontPositionClosed : C.wavefrontPosition
  somiteFormationTimingClosed : C.somiteFormationTiming
  wavefrontVelocityClosed : C.wavefrontVelocity
  periodMatchesTimingClosed : C.periodMatchesTiming

def ClockWavefrontClosed (C : ClockWavefrontPackage) : Prop :=
  C.clockOscillatorPeriod ∧ C.wavefrontPosition ∧ C.somiteFormationTiming ∧ C.wavefrontVelocity ∧ C.periodMatchesTiming

theorem clock_wavefront_closed_from_evidence (C : ClockWavefrontPackage) (E : ClockWavefrontEvidence C) : ClockWavefrontClosed C := by
  exact And.intro E.clockOscillatorPeriodClosed
    (And.intro E.wavefrontPositionClosed
      (And.intro E.somiteFormationTimingClosed
        (And.intro E.wavefrontVelocityClosed E.periodMatchesTimingClosed)))

end DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean
end HautevilleHouse
