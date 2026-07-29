import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure SignalTransductionPackage where
  receptor : Type u
  ligand : Type v
  intracellularModule : Type w
  activationSignal : Prop
  cascadeSteps : Prop
  feedbackLoops : Prop

structure SignalTransductionEvidence (S : SignalTransductionPackage) where
  activationSignalClosed : S.activationSignal
  cascadeStepsClosed : S.cascadeSteps
  feedbackLoopsClosed : S.feedbackLoops

def SignalTransductionClosed (S : SignalTransductionPackage) : Prop :=
  S.activationSignal ∧ S.cascadeSteps ∧ S.feedbackLoops

theorem signal_transduction_closed_from_evidence
    (S : SignalTransductionPackage) (E : SignalTransductionEvidence S) :
    SignalTransductionClosed S := by
  exact And.intro E.activationSignalClosed
    (And.intro E.cascadeStepsClosed E.feedbackLoopsClosed)

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse