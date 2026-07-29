import CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean.PathwayRegulationPackage

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure FeedbackLoopPackage {P : SignalTransductionPackage}
    {R : PathwayRegulationPackage P} where
  positiveFeedbackDetected : Prop
  negativeFeedbackDetected : Prop
  loopStability : Prop
  oscillationPeriodBound : Prop
  switchLikeBehavior : Prop

structure FeedbackLoopEvidence {P : SignalTransductionPackage}
    {R : PathwayRegulationPackage P} (F : FeedbackLoopPackage R) where
  positiveFeedbackDetectedClosed : F.positiveFeedbackDetected
  negativeFeedbackDetectedClosed : F.negativeFeedbackDetected
  loopStabilityClosed : F.loopStability
  oscillationPeriodBoundClosed : F.oscillationPeriodBound
  switchLikeBehaviorClosed : F.switchLikeBehavior

def FeedbackLoopClosed {P : SignalTransductionPackage}
    {R : PathwayRegulationPackage P} (F : FeedbackLoopPackage R) : Prop :=
  F.positiveFeedbackDetected ∧ F.negativeFeedbackDetected ∧ F.loopStability ∧
  F.oscillationPeriodBound ∧ F.switchLikeBehavior

theorem feedback_loop_closed_from_evidence {P : SignalTransductionPackage}
    {R : PathwayRegulationPackage P} (F : FeedbackLoopPackage R)
    (E : FeedbackLoopEvidence F) : FeedbackLoopClosed F := by
  exact And.intro E.positiveFeedbackDetectedClosed
    (And.intro E.negativeFeedbackDetectedClosed
      (And.intro E.loopStabilityClosed
        (And.intro E.oscillationPeriodBoundClosed E.switchLikeBehaviorClosed)))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse