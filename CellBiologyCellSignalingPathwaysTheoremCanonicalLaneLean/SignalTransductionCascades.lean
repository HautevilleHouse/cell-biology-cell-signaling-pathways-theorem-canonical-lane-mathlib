import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure SignalTransductionCascadePackage where
  receptorActivation : Prop
  secondMessengerProduction : Prop
  kinasePhosphorylation : Prop
  transcriptionFactorActivation : Prop
  geneExpressionChange : Prop

structure SignalTransductionCascadeEvidence (S : SignalTransductionCascadePackage) where
  receptorActivationClosed : S.receptorActivation
  secondMessengerProductionClosed : S.secondMessengerProduction
  kinasePhosphorylationClosed : S.kinasePhosphorylation
  transcriptionFactorActivationClosed : S.transcriptionFactorActivation
  geneExpressionChangeClosed : S.geneExpressionChange

def SignalTransductionCascadeClosed (S : SignalTransductionCascadePackage) : Prop :=
  S.receptorActivation ∧ S.secondMessengerProduction ∧ S.kinasePhosphorylation ∧
  S.transcriptionFactorActivation ∧ S.geneExpressionChange

theorem signal_transduction_cascade_closed_from_evidence
    (S : SignalTransductionCascadePackage) (E : SignalTransductionCascadeEvidence S) :
    SignalTransductionCascadeClosed S := by
  exact And.intro E.receptorActivationClosed
    (And.intro E.secondMessengerProductionClosed
      (And.intro E.kinasePhosphorylationClosed
        (And.intro E.transcriptionFactorActivationClosed E.geneExpressionChangeClosed)))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse