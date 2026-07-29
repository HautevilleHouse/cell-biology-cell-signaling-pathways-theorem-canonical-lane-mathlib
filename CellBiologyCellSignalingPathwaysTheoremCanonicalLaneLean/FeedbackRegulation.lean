import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure FeedbackRegulationPackage where
  positiveFeedbackLoop : Prop
  negativeFeedbackLoop : Prop
  signalAmplification : Prop
  signalAttenuation : Prop
  homeostaticSetpoint : Prop

structure FeedbackRegulationEvidence (F : FeedbackRegulationPackage) where
  positiveFeedbackLoopClosed : F.positiveFeedbackLoop
  negativeFeedbackLoopClosed : F.negativeFeedbackLoop
  signalAmplificationClosed : F.signalAmplification
  signalAttenuationClosed : F.signalAttenuation
  homeostaticSetpointClosed : F.homeostaticSetpoint

def FeedbackRegulationClosed (F : FeedbackRegulationPackage) : Prop :=
  F.positiveFeedbackLoop ∧ F.negativeFeedbackLoop ∧ F.signalAmplification ∧
  F.signalAttenuation ∧ F.homeostaticSetpoint

theorem feedback_regulation_closed_from_evidence
    (F : FeedbackRegulationPackage) (E : FeedbackRegulationEvidence F) :
    FeedbackRegulationClosed F := by
  exact And.intro E.positiveFeedbackLoopClosed
    (And.intro E.negativeFeedbackLoopClosed
      (And.intro E.signalAmplificationClosed
        (And.intro E.signalAttenuationClosed E.homeostaticSetpointClosed)))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse