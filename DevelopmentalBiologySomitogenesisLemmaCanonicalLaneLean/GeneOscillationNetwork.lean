import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean

structure GeneOscillationNetworkPackage where
  herCycRegulation : Prop
  notchDeltaWnt : Prop
  negativeFeedbackDelay : Prop
  synchronisedOscillations : Prop

structure GeneOscillationNetworkEvidence (G : GeneOscillationNetworkPackage) where
  herCycRegulationClosed : G.herCycRegulation
  notchDeltaWntClosed : G.notchDeltaWnt
  negativeFeedbackDelayClosed : G.negativeFeedbackDelay
  synchronisedOscillationsClosed : G.synchronisedOscillations

def GeneOscillationNetworkClosed (G : GeneOscillationNetworkPackage) : Prop :=
  G.herCycRegulation ∧ G.notchDeltaWnt ∧ G.negativeFeedbackDelay ∧ G.synchronisedOscillations

theorem gene_oscillation_network_closed_from_evidence (G : GeneOscillationNetworkPackage) (E : GeneOscillationNetworkEvidence G) :
    GeneOscillationNetworkClosed G := by
  exact And.intro E.herCycRegulationClosed (And.intro E.notchDeltaWntClosed (And.intro E.negativeFeedbackDelayClosed E.synchronisedOscillationsClosed))

end DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean
end HautevilleHouse