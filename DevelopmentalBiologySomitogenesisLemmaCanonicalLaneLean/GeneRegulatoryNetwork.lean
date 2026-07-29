import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  hesGenes : Prop
  herFactors : Prop
  lfngOscillation : Prop
  deltaNotchInteraction : Prop
  somiteClock : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  hesGenesClosed : G.hesGenes
  herFactorsClosed : G.herFactors
  lfngOscillationClosed : G.lfngOscillation
  deltaNotchInteractionClosed : G.deltaNotchInteraction
  somiteClockClosed : G.somiteClock

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.hesGenes ∧ G.herFactors ∧ G.lfngOscillation ∧ G.deltaNotchInteraction ∧ G.somiteClock

theorem gene_regulatory_network_closed_from_evidence (G : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence G) :
    GeneRegulatoryNetworkClosed G := by
  exact And.intro E.hesGenesClosed
    (And.intro E.herFactorsClosed
      (And.intro E.lfngOscillationClosed
        (And.intro E.deltaNotchInteractionClosed E.somiteClockClosed)))

end DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean
end HautevilleHouse