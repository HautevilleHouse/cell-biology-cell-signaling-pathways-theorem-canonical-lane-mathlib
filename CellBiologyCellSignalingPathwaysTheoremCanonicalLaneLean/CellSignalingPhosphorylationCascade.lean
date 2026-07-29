import HautevilleHouse.CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean.CellSignalingBridgeLemmas

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure PhosphorylationCascadePackage where
  kinaseActivation : Prop
  phosphataseRegulation : Prop
  feedbackLoops : Prop
  signalAmplification : Prop

structure PhosphorylationCascadeEvidence (P : PhosphorylationCascadePackage) where
  kinaseActivationClosed : P.kinaseActivation
  phosphataseRegulationClosed : P.phosphataseRegulation
  feedbackLoopsClosed : P.feedbackLoops
  signalAmplificationClosed : P.signalAmplification

def PhosphorylationCascadeClosed (P : PhosphorylationCascadePackage) : Prop :=
  P.kinaseActivation ∧ P.phosphataseRegulation ∧ P.feedbackLoops ∧ P.signalAmplification

theorem phosphorylation_cascade_closed_from_evidence (P : PhosphorylationCascadePackage) (E : PhosphorylationCascadeEvidence P) :
    PhosphorylationCascadeClosed P := by
  exact And.intro E.kinaseActivationClosed
    (And.intro E.phosphataseRegulationClosed
      (And.intro E.feedbackLoopsClosed E.signalAmplificationClosed))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse