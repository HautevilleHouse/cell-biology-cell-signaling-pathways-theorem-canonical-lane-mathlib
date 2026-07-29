import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean.TranscriptionalResponse

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure CellSignalEndpointPackage {R : SignalReceptorPackage} {L : LigandBindingPackage R} {P : PathwayTransductionPackage R L} {T : TranscriptionalResponsePackage R L P} where
  cellFateDecision : Prop
  apoptosisInduction : Prop
  proliferationActivation : Prop
  differentiationTrigger : Prop
  migrationStimulation : Prop

structure CellSignalEndpointEvidence {R : SignalReceptorPackage} {L : LigandBindingPackage R} {P : PathwayTransductionPackage R L} {T : TranscriptionalResponsePackage R L P} (E : CellSignalEndpointPackage R L P T) where
  cellFateDecisionClosed : E.cellFateDecision
  apoptosisInductionClosed : E.apoptosisInduction
  proliferationActivationClosed : E.proliferationActivation
  differentiationTriggerClosed : E.differentiationTrigger
  migrationStimulationClosed : E.migrationStimulation

def CellSignalEndpointClosed {R : SignalReceptorPackage} {L : LigandBindingPackage R} {P : PathwayTransductionPackage R L} {T : TranscriptionalResponsePackage R L P} (E : CellSignalEndpointPackage R L P T) : Prop :=
  E.cellFateDecision ∧ E.apoptosisInduction ∧ E.proliferationActivation ∧ E.differentiationTrigger ∧ E.migrationStimulation

theorem cell_signal_endpoint_closed_from_evidence {R : SignalReceptorPackage} {L : LigandBindingPackage R} {P : PathwayTransductionPackage R L} {T : TranscriptionalResponsePackage R L P} (E : CellSignalEndpointPackage R L P T) (Ev : CellSignalEndpointEvidence E) : CellSignalEndpointClosed E := by
  exact And.intro Ev.cellFateDecisionClosed (And.intro Ev.apoptosisInductionClosed (And.intro Ev.proliferationActivationClosed (And.intro Ev.differentiationTriggerClosed Ev.migrationStimulationClosed)))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse