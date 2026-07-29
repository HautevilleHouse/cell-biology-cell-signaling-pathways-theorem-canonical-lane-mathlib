import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure PathwayRegulationPackage {ST : SignalTransductionCascadePackage} where
  feedbackLoops : Prop
  crossTalk : Prop
  attenuationMechanisms : Prop
  signalTermination : Prop

structure PathwayRegulationEvidence {ST : SignalTransductionCascadePackage}
    (PR : PathwayRegulationPackage ST) where
  feedbackLoopsClosed : PR.feedbackLoops
  crossTalkClosed : PR.crossTalk
  attenuationMechanismsClosed : PR.attenuationMechanisms
  signalTerminationClosed : PR.signalTermination

def PathwayRegulationClosed {ST : SignalTransductionCascadePackage}
    (PR : PathwayRegulationPackage ST) : Prop :=
  PR.feedbackLoops ∧ PR.crossTalk ∧ PR.attenuationMechanisms ∧ PR.signalTermination

theorem pathway_regulation_closed_from_evidence
    {ST : SignalTransductionCascadePackage} (PR : PathwayRegulationPackage ST)
    (E : PathwayRegulationEvidence PR) : PathwayRegulationClosed PR :=
  And.intro E.feedbackLoopsClosed
    (And.intro E.crossTalkClosed
      (And.intro E.attenuationMechanismsClosed E.signalTerminationClosed))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse