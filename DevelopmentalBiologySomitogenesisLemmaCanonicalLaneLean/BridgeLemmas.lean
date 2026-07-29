import DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SomitogenesisWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean
end HautevilleHouse
