import HautevilleHouse.DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean

structure SomitogenesisSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SomitogenesisAdmittedObject where
  space : SomitogenesisSpace
  somitogenesisCompleted : Prop
  segmentPolarityPattern : Prop
  clockWavefrontModel : Type
  modelConsistent : Prop
  conclusion : modelConsistent

def SomitogenesisWitnessClosed (O : SomitogenesisAdmittedObject) : Prop :=
  O.modelConsistent

end DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean
end HautevilleHouse