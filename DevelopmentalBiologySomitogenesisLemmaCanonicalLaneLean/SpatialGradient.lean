import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean

structure SpatialGradientPackage where
  fgf8Gradient : Prop
  retinoicAcidGradient : Prop
  wntSignalingGradient : Prop
  morphogenConcentration : Prop
  cellPositionEncoding : Prop

structure SpatialGradientEvidence (S : SpatialGradientPackage) where
  fgf8GradientClosed : S.fgf8Gradient
  retinoicAcidGradientClosed : S.retinoicAcidGradient
  wntSignalingGradientClosed : S.wntSignalingGradient
  morphogenConcentrationClosed : S.morphogenConcentration
  cellPositionEncodingClosed : S.cellPositionEncoding

def SpatialGradientClosed (S : SpatialGradientPackage) : Prop :=
  S.fgf8Gradient ∧ S.retinoicAcidGradient ∧ S.wntSignalingGradient ∧ S.morphogenConcentration ∧ S.cellPositionEncoding

theorem spatial_gradient_closed_from_evidence (S : SpatialGradientPackage) (E : SpatialGradientEvidence S) :
    SpatialGradientClosed S := by
  exact And.intro E.fgf8GradientClosed
    (And.intro E.retinoicAcidGradientClosed
      (And.intro E.wntSignalingGradientClosed
        (And.intro E.morphogenConcentrationClosed E.cellPositionEncodingClosed)))

end DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean
end HautevilleHouse