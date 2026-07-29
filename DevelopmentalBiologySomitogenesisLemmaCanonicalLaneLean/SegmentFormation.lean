import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean

structure SegmentFormationPackage where
  mesodermPrepattern : Prop
  segmentBoundaryDetermination : Prop
  epithelialization : Prop
  segmentIdentityAssignment : Prop

structure SegmentFormationEvidence (S : SegmentFormationPackage) where
  mesodermPrepatternClosed : S.mesodermPrepattern
  segmentBoundaryDeterminationClosed : S.segmentBoundaryDetermination
  epithelializationClosed : S.epithelialization
  segmentIdentityAssignmentClosed : S.segmentIdentityAssignment

def SegmentFormationClosed (S : SegmentFormationPackage) : Prop :=
  S.mesodermPrepattern ∧ S.segmentBoundaryDetermination ∧
  S.epithelialization ∧ S.segmentIdentityAssignment

theorem segment_formation_closed_from_evidence
    (S : SegmentFormationPackage) (E : SegmentFormationEvidence S) :
    SegmentFormationClosed S := by
  exact And.intro E.mesodermPrepatternClosed
    (And.intro E.segmentBoundaryDeterminationClosed
      (And.intro E.epithelializationClosed E.segmentIdentityAssignmentClosed))

end DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean
end HautevilleHouse