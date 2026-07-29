import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure SignalTransductionPackage where
  receptor : Type u
  ligand : Type v
  intracellularModule : Type w
  signalAmplification : Prop
  cascadeFidelity : Prop
  activationThreshold : Prop
  signalDuration : Prop

structure SignalTransductionEvidence (P : SignalTransductionPackage) where
  signalAmplificationClosed : P.signalAmplification
  cascadeFidelityClosed : P.cascadeFidelity
  activationThresholdClosed : P.activationThreshold
  signalDurationClosed : P.signalDuration

def SignalTransductionClosed (P : SignalTransductionPackage) : Prop :=
  P.signalAmplification ∧ P.cascadeFidelity ∧ P.activationThreshold ∧ P.signalDuration

theorem signal_transduction_closed_from_evidence (P : SignalTransductionPackage)
    (E : SignalTransductionEvidence P) : SignalTransductionClosed P := by
  exact And.intro E.signalAmplificationClosed
    (And.intro E.cascadeFidelityClosed
      (And.intro E.activationThresholdClosed E.signalDurationClosed))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse