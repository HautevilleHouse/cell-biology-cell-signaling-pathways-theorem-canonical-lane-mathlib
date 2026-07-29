import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure CellSignalingFoundation where
  transduction : SignalTransductionPackage
  transductionEvidence : SignalTransductionEvidence transduction
  canonicalPathway : CanonicalPathwayPackage transduction
  canonicalPathwayEvidence : CanonicalPathwayEvidence canonicalPathway

def CellSignalingFoundationClosed (F : CellSignalingFoundation) : Prop :=
  SignalTransductionClosed F.transduction ∧
  CanonicalPathwayClosed F.canonicalPathway

theorem cell_signaling_foundation_closed_from_evidence
    (F : CellSignalingFoundation) :
    CellSignalingFoundationClosed F := by
  exact And.intro
    (signal_transduction_closed_from_evidence F.transduction F.transductionEvidence)
    (canonical_pathway_closed_from_evidence F.canonicalPathway F.canonicalPathwayEvidence)

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse