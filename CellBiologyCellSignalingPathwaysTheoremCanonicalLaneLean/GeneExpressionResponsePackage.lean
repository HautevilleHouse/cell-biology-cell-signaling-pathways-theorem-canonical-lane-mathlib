import cellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean.SignalTransductionCascadePackage

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure GeneExpressionResponsePackage {R : ReceptorLigandBindingPackage}
    {C : SignalTransductionCascadePackage R} where
  transcriptionFactorActivation : Prop
  chromatinModification : Prop
  targetGeneUpregulation : Prop
  negativeFeedback : Prop
  phenotypicChange : Prop

structure GeneExpressionResponseEvidence {R : ReceptorLigandBindingPackage}
    {C : SignalTransductionCascadePackage R} (G : GeneExpressionResponsePackage R C) where
  transcriptionFactorActivationClosed : G.transcriptionFactorActivation
  chromatinModificationClosed : G.chromatinModification
  targetGeneUpregulationClosed : G.targetGeneUpregulation
  negativeFeedbackClosed : G.negativeFeedback
  phenotypicChangeClosed : G.phenotypicChange

def GeneExpressionResponseClosed {R : ReceptorLigandBindingPackage}
    {C : SignalTransductionCascadePackage R} (G : GeneExpressionResponsePackage R C) : Prop :=
  G.transcriptionFactorActivation ∧ G.chromatinModification ∧ G.targetGeneUpregulation ∧
  G.negativeFeedback ∧ G.phenotypicChange

theorem gene_expression_response_closed_from_evidence
    {R : ReceptorLigandBindingPackage} {C : SignalTransductionCascadePackage R}
    (G : GeneExpressionResponsePackage R C) (E : GeneExpressionResponseEvidence G) :
    GeneExpressionResponseClosed G := by
  exact And.intro E.transcriptionFactorActivationClosed
    (And.intro E.chromatinModificationClosed
      (And.intro E.targetGeneUpregulationClosed
        (And.intro E.negativeFeedbackClosed E.phenotypicChangeClosed)))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse