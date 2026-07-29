import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean

structure DeltaNotchOscillatorPackage where
  deltaNotchPathActive : Prop
  hesGeneOscillations : Prop
  lateralInhibition : Prop
  synchronizationAmongCells : Prop
  oscillationPeriodMatched : Prop

structure DeltaNotchOscillatorEvidence (D : DeltaNotchOscillatorPackage) where
  deltaNotchPathActiveClosed : D.deltaNotchPathActive
  hesGeneOscillationsClosed : D.hesGeneOscillations
  lateralInhibitionClosed : D.lateralInhibition
  synchronizationAmongCellsClosed : D.synchronizationAmongCells
  oscillationPeriodMatchedClosed : D.oscillationPeriodMatched

def DeltaNotchOscillatorClosed (D : DeltaNotchOscillatorPackage) : Prop :=
  D.deltaNotchPathActive ∧ D.hesGeneOscillations ∧ D.lateralInhibition ∧ D.synchronizationAmongCells ∧ D.oscillationPeriodMatched

theorem delta_notch_oscillator_closed_from_evidence (D : DeltaNotchOscillatorPackage) (E : DeltaNotchOscillatorEvidence D) : DeltaNotchOscillatorClosed D := by
  exact And.intro E.deltaNotchPathActiveClosed (And.intro E.hesGeneOscillationsClosed (And.intro E.lateralInhibitionClosed (And.intro E.synchronizationAmongCellsClosed E.oscillationPeriodMatchedClosed)))

end DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean
end HautevilleHouse