import HautevilleHouse.CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean.CellSignalingBridgeLemmas
import HautevilleHouse.CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean.CellSignalingGateLemmas

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

def ConstrainedCellSignalingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cell_signaling_endgame (A : AdmissibleClass) :
    ConstrainedCellSignalingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse