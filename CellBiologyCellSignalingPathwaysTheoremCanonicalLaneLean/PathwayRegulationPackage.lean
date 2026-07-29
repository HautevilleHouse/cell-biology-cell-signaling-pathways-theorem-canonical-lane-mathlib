import CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean.SignalTransductionPackage

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure PathwayRegulationPackage {P : SignalTransductionPackage} where
  phosphorylationDynamics : Prop
  feedbackInhibition : Prop
  crossTalkBuffering : Prop
  adaptationCapacity : Prop
  noiseFiltering : Prop

structure PathwayRegulationEvidence {P : SignalTransductionPackage}
    (R : PathwayRegulationPackage P) where
  phosphorylationDynamicsClosed : R.phosphorylationDynamics
  feedbackInhibitionClosed : R.feedbackInhibition
  crossTalkBufferingClosed : R.crossTalkBuffering
  adaptationCapacityClosed : R.adaptationCapacity
  noiseFilteringClosed : R.noiseFiltering

def PathwayRegulationClosed {P : SignalTransductionPackage}
    (R : PathwayRegulationPackage P) : Prop :=
  R.phosphorylationDynamics ∧ R.feedbackInhibition ∧ R.crossTalkBuffering ∧
  R.adaptationCapacity ∧ R.noiseFiltering

theorem pathway_regulation_closed_from_evidence {P : SignalTransductionPackage}
    (R : PathwayRegulationPackage P) (E : PathwayRegulationEvidence R) :
    PathwayRegulationClosed R := by
  exact And.intro E.phosphorylationDynamicsClosed
    (And.intro E.feedbackInhibitionClosed
      (And.intro E.crossTalkBufferingClosed
        (And.intro E.adaptationCapacityClosed E.noiseFilteringClosed)))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse