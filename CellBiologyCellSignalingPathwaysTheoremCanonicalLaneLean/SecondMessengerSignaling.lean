import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure SecondMessengerSignalingPackage where
  intracellularMediator : Type u
  concentrationDynamics : Prop
  targetEffectorBinding : Prop
  signalDurationControl : Prop
  feedbackRegulation : Prop

structure SecondMessengerSignalingEvidence (S : SecondMessengerSignalingPackage) where
  concentrationDynamicsClosed : S.concentrationDynamics
  targetEffectorBindingClosed : S.targetEffectorBinding
  signalDurationControlClosed : S.signalDurationControl
  feedbackRegulationClosed : S.feedbackRegulation

def SecondMessengerSignalingClosed (S : SecondMessengerSignalingPackage) : Prop :=
  S.concentrationDynamics ∧ S.targetEffectorBinding ∧ S.signalDurationControl ∧ S.feedbackRegulation

theorem second_messenger_signaling_closed_from_evidence (S : SecondMessengerSignalingPackage) (E : SecondMessengerSignalingEvidence S) :
    SecondMessengerSignalingClosed S := by
  exact And.intro E.concentrationDynamicsClosed
    (And.intro E.targetEffectorBindingClosed
      (And.intro E.signalDurationControlClosed E.feedbackRegulationClosed))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse