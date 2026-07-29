import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean

structure SegmentPolarityPackage where
  anteriorPosteriorAxisDefined : Prop
  hoxGeneExpressionGradient : Prop
  retinoicAcidSignaling : Prop
  fgfSignaling : Prop
  polarityDetermination : Prop

structure SegmentPolarityEvidence (P : SegmentPolarityPackage) where
  anteriorPosteriorAxisDefinedClosed : P.anteriorPosteriorAxisDefined
  hoxGeneExpressionGradientClosed : P.hoxGeneExpressionGradient
  retinoicAcidSignalingClosed : P.retinoicAcidSignaling
  fgfSignalingClosed : P.fgfSignaling
  polarityDeterminationClosed : P.polarityDetermination

def SegmentPolarityClosed (P : SegmentPolarityPackage) : Prop :=
  P.anteriorPosteriorAxisDefined ∧ P.hoxGeneExpressionGradient ∧ P.retinoicAcidSignaling ∧ P.fgfSignaling ∧ P.polarityDetermination

theorem segment_polarity_closed_from_evidence (P : SegmentPolarityPackage) (E : SegmentPolarityEvidence P) : SegmentPolarityClosed P := by
  exact And.intro E.anteriorPosteriorAxisDefinedClosed (And.intro E.hoxGeneExpressionGradientClosed (And.intro E.retinoicAcidSignalingClosed (And.intro E.fgfSignalingClosed E.polarityDeterminationClosed)))

end DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean
end HautevilleHouse