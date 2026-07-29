import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure KinaseCascadePackage where
  phosphorylationEvents : Prop
  scaffoldProteins : Prop
  feedbackLoops : Prop
  signalAmplification : Prop

structure KinaseCascadeEvidence (K : KinaseCascadePackage) where
  phosphorylationEventsClosed : K.phosphorylationEvents
  scaffoldProteinsClosed : K.scaffoldProteins
  feedbackLoopsClosed : K.feedbackLoops
  signalAmplificationClosed : K.signalAmplification

def KinaseCascadeClosed (K : KinaseCascadePackage) : Prop :=
  K.phosphorylationEvents ∧ K.scaffoldProteins ∧ K.feedbackLoops ∧ K.signalAmplification

theorem kinase_cascade_closed_from_evidence (K : KinaseCascadePackage) (E : KinaseCascadeEvidence K) : KinaseCascadeClosed K := by
  exact And.intro E.phosphorylationEventsClosed (And.intro E.scaffoldProteinsClosed (And.intro E.feedbackLoopsClosed E.signalAmplificationClosed))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse