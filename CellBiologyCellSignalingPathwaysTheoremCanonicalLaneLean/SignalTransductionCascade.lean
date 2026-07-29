import HautevilleHouse.CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean.ReceptorLigandBinding

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure SignalTransductionCascadePackage {R : ReceptorLigandBindingPackage}
    (B : ReceptorLigandBindingEvidence R) where
  kinaseActivation : Prop
  phosphataseRegulation : Prop
  secondMessengerSignaling : Prop
  amplificationFactor : Prop
  feedbackLoops : Prop

structure SignalTransductionCascadeEvidence {R : ReceptorLigandBindingPackage}
    {B : ReceptorLigandBindingEvidence R} (C : SignalTransductionCascadePackage B) where
  kinaseActivationClosed : C.kinaseActivation
  phosphataseRegulationClosed : C.phosphataseRegulation
  secondMessengerSignalingClosed : C.secondMessengerSignaling
  amplificationFactorClosed : C.amplificationFactor
  feedbackLoopsClosed : C.feedbackLoops

def SignalTransductionCascadeClosed {R : ReceptorLigandBindingPackage}
    {B : ReceptorLigandBindingEvidence R} (C : SignalTransductionCascadePackage B) : Prop :=
  C.kinaseActivation ∧ C.phosphataseRegulation ∧ C.secondMessengerSignaling ∧
  C.amplificationFactor ∧ C.feedbackLoops

theorem signal_transduction_cascade_closed_from_evidence
    {R : ReceptorLigandBindingPackage} {B : ReceptorLigandBindingEvidence R}
    (C : SignalTransductionCascadePackage B) (E : SignalTransductionCascadeEvidence C) :
    SignalTransductionCascadeClosed C := by
  exact And.intro E.kinaseActivationClosed
    (And.intro E.phosphataseRegulationClosed
      (And.intro E.secondMessengerSignalingClosed
        (And.intro E.amplificationFactorClosed E.feedbackLoopsClosed)))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse
