import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure SignalTerminationPackage where
  downregulationMechanism : Type u
  phosphataseActivity : Prop
  receptorInternalization : Prop
  negativeFeedback : Prop
  signalAttenuation : Prop

structure SignalTerminationEvidence (T : SignalTerminationPackage) where
  phosphataseActivityClosed : T.phosphataseActivity
  receptorInternalizationClosed : T.receptorInternalization
  negativeFeedbackClosed : T.negativeFeedback
  signalAttenuationClosed : T.signalAttenuation

def SignalTerminationClosed (T : SignalTerminationPackage) : Prop :=
  T.phosphataseActivity ∧ T.receptorInternalization ∧ T.negativeFeedback ∧ T.signalAttenuation

theorem signal_termination_closed_from_evidence (T : SignalTerminationPackage) (E : SignalTerminationEvidence T) :
    SignalTerminationClosed T := by
  exact And.intro E.phosphataseActivityClosed
    (And.intro E.receptorInternalizationClosed
      (And.intro E.negativeFeedbackClosed E.signalAttenuationClosed))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse