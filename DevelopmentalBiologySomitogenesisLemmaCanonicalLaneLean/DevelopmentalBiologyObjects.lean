import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure SomitogenesisSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SomitogenesisAdmittedObject where
  space : SomitogenesisSpace
  segmentPolarity : Prop
  clockWavefrontCoordinated : Prop
  segmentBoundaryEstablished : Prop
  conclusion : segmentBoundaryEstablished

def SomitogenesisWitnessClosed (O : SomitogenesisAdmittedObject) : Prop :=
  O.segmentBoundaryEstablished

end DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean
end HautevilleHouse