import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean.LigandBinding

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure PathwayTransductionPackage {R : SignalReceptorPackage} {L : LigandBindingPackage R} where
  intracellularCascade : Prop
  secondMessengerInvolvement : Prop
  phosphorylationEvents : Prop
  scaffoldProteins : Prop
  crossTalk : Prop

structure PathwayTransductionEvidence {R : SignalReceptorPackage} {L : LigandBindingPackage R} (P : PathwayTransductionPackage R L) where
  intracellularCascadeClosed : P.intracellularCascade
  secondMessengerInvolvementClosed : P.secondMessengerInvolvement
  phosphorylationEventsClosed : P.phosphorylationEvents
  scaffoldProteinsClosed : P.scaffoldProteins
  crossTalkClosed : P.crossTalk

def PathwayTransductionClosed {R : SignalReceptorPackage} {L : LigandBindingPackage R} (P : PathwayTransductionPackage R L) : Prop :=
  P.intracellularCascade ∧ P.secondMessengerInvolvement ∧ P.phosphorylationEvents ∧ P.scaffoldProteins ∧ P.crossTalk

theorem pathway_transduction_closed_from_evidence {R : SignalReceptorPackage} {L : LigandBindingPackage R} (P : PathwayTransductionPackage R L) (E : PathwayTransductionEvidence P) : PathwayTransductionClosed P := by
  exact And.intro E.intracellularCascadeClosed (And.intro E.secondMessengerInvolvementClosed (And.intro E.phosphorylationEventsClosed (And.intro E.scaffoldProteinsClosed E.crossTalkClosed)))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse