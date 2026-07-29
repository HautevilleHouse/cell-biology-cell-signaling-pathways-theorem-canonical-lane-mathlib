import HautevilleHouse.CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean.SignalTransductionCascade

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure GeneRegulationNetworkPackage {R : ReceptorLigandBindingPackage}
    {B : ReceptorLigandBindingEvidence R} {C : SignalTransductionCascadePackage B}
    (D : SignalTransductionCascadeEvidence C) where
  transcriptionFactorActivation : Prop
  geneExpressionProfiling : Prop
  epigeneticModifications : Prop
  chromatinRemodeling : Prop
  rnaProcessing : Prop

structure GeneRegulationNetworkEvidence {R : ReceptorLigandBindingPackage}
    {B : ReceptorLigandBindingEvidence R} {C : SignalTransductionCascadePackage B}
    {D : SignalTransductionCascadeEvidence C} (G : GeneRegulationNetworkPackage D) where
  transcriptionFactorActivationClosed : G.transcriptionFactorActivation
  geneExpressionProfilingClosed : G.geneExpressionProfiling
  epigeneticModificationsClosed : G.epigeneticModifications
  chromatinRemodelingClosed : G.chromatinRemodeling
  rnaProcessingClosed : G.rnaProcessing

def GeneRegulationNetworkClosed {R : ReceptorLigandBindingPackage}
    {B : ReceptorLigandBindingEvidence R} {C : SignalTransductionCascadePackage B}
    {D : SignalTransductionCascadeEvidence C} (G : GeneRegulationNetworkPackage D) : Prop :=
  G.transcriptionFactorActivation ∧ G.geneExpressionProfiling ∧ G.epigeneticModifications ∧
  G.chromatinRemodeling ∧ G.rnaProcessing

theorem gene_regulation_network_closed_from_evidence
    {R : ReceptorLigandBindingPackage} {B : ReceptorLigandBindingEvidence R}
    {C : SignalTransductionCascadePackage B} {D : SignalTransductionCascadeEvidence C}
    (G : GeneRegulationNetworkPackage D) (E : GeneRegulationNetworkEvidence G) :
    GeneRegulationNetworkClosed G := by
  exact And.intro E.transcriptionFactorActivationClosed
    (And.intro E.geneExpressionProfilingClosed
      (And.intro E.epigeneticModificationsClosed
        (And.intro E.chromatinRemodelingClosed E.rnaProcessingClosed)))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse
