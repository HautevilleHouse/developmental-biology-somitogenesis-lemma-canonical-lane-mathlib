import DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : SomitogenesisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop := 
  SomitogenesisWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean
end HautevilleHouse
