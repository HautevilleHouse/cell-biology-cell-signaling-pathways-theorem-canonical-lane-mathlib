import cellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean.CellSurfaceReceptorPackage

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure SignalTransductionCascadePackage {R : ReceptorLigandBindingPackage} where
  kinaseActivation : Prop
  secondMessenger : Prop
  phosphorylationCascade : Prop
  signalAmplification : Prop
  pathwayCrossTalkRegulation : Prop

structure SignalTransductionCascadeEvidence {R : ReceptorLigandBindingPackage}
    (C : SignalTransductionCascadePackage R) where
  kinaseActivationClosed : C.kinaseActivation
  secondMessengerClosed : C.secondMessenger
  phosphorylationCascadeClosed : C.phosphorylationCascade
  signalAmplificationClosed : C.signalAmplification
  pathwayCrossTalkRegulationClosed : C.pathwayCrossTalkRegulation

def SignalTransductionCascadeClosed {R : ReceptorLigandBindingPackage}
    (C : SignalTransductionCascadePackage R) : Prop :=
  C.kinaseActivation ∧ C.secondMessenger ∧ C.phosphorylationCascade ∧
  C.signalAmplification ∧ C.pathwayCrossTalkRegulation

theorem signal_transduction_cascade_closed_from_evidence
    {R : ReceptorLigandBindingPackage} (C : SignalTransductionCascadePackage R)
    (E : SignalTransductionCascadeEvidence C) : SignalTransductionCascadeClosed C := by
  exact And.intro E.kinaseActivationClosed
    (And.intro E.secondMessengerClosed
      (And.intro E.phosphorylationCascadeClosed
        (And.intro E.signalAmplificationClosed E.pathwayCrossTalkRegulationClosed)))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse