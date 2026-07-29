import SomitogenesisClockWave.lean

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean

structure SegmentFormationCorePackage {C : SomitogenesisClockWavePackage} where
  boundaryFormation : Prop
  mesenchymalEpithelialTransition : Prop
  notchSignaling : Prop
  fgfWntGradient : Prop
  cyclicGeneExpression : Prop

structure SegmentFormationCoreEvidence {C : SomitogenesisClockWavePackage} (E : SomitogenesisClockWaveEvidence C) (S : SegmentFormationCorePackage) where
  boundaryFormationClosed : S.boundaryFormation
  mesenchymalEpithelialTransitionClosed : S.mesenchymalEpithelialTransition
  notchSignalingClosed : S.notchSignaling
  fgfWntGradientClosed : S.fgfWntGradient
  cyclicGeneExpressionClosed : S.cyclicGeneExpression

def SegmentFormationCoreClosed {C : SomitogenesisClockWavePackage} (S : SegmentFormationCorePackage) : Prop :=
  S.boundaryFormation ∧ S.mesenchymalEpithelialTransition ∧ S.notchSignaling ∧ S.fgfWntGradient ∧ S.cyclicGeneExpression

theorem segment_formation_core_closed_from_evidence
    {C : SomitogenesisClockWavePackage} (E : SomitogenesisClockWaveEvidence C) (S : SegmentFormationCorePackage)
    (SE : SegmentFormationCoreEvidence E S) : SegmentFormationCoreClosed S := by
  exact And.intro SE.boundaryFormationClosed
    (And.intro SE.mesenchymalEpithelialTransitionClosed
      (And.intro SE.notchSignalingClosed
        (And.intro SE.fgfWntGradientClosed SE.cyclicGeneExpressionClosed)))

end DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean
end HautevilleHouse