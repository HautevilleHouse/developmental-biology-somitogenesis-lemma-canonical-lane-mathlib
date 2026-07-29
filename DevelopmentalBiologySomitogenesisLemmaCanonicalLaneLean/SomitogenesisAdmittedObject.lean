import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean

structure SomitogenesisSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SomitogenesisAdmittedObject where
  space : SomitogenesisSpace
  patternFormed : Prop
  periodicSegmentation : Prop
  embryoModel : Type
  embryoTopology : TopologicalSpace embryoModel
  segmentPatternObserved : Prop
  conclusion : segmentPatternObserved

def SomitogenesisWitnessClosed (O : SomitogenesisAdmittedObject) : Prop :=
  O.segmentPatternObserved

end DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean
end HautevilleHouse