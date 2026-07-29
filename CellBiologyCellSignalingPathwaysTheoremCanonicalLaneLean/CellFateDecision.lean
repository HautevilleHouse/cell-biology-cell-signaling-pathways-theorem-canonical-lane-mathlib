import HautevilleHouse.CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean.GeneRegulationNetwork

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure CellFateDecisionPackage {R : ReceptorLigandBindingPackage}
    {B : ReceptorLigandBindingEvidence R} {C : SignalTransductionCascadePackage B}
    {D : SignalTransductionCascadeEvidence C} {G : GeneRegulationNetworkPackage D}
    (E : GeneRegulationNetworkEvidence G) where
  proliferationSignal : Prop
  differentiationSignal : Prop
  apoptosisSignal : Prop
  cellCycleArrest : Prop
  metabolicReprogramming : Prop

structure CellFateDecisionEvidence {R : ReceptorLigandBindingPackage}
    {B : ReceptorLigandBindingEvidence R} {C : SignalTransductionCascadePackage B}
    {D : SignalTransductionCascadeEvidence C} {G : GeneRegulationNetworkPackage D}
    {E : GeneRegulationNetworkEvidence G} (F : CellFateDecisionPackage E) where
  proliferationSignalClosed : F.proliferationSignal
  differentiationSignalClosed : F.differentiationSignal
  apoptosisSignalClosed : F.apoptosisSignal
  cellCycleArrestClosed : F.cellCycleArrest
  metabolicReprogrammingClosed : F.metabolicReprogramming

def CellFateDecisionClosed {R : ReceptorLigandBindingPackage}
    {B : ReceptorLigandBindingEvidence R} {C : SignalTransductionCascadePackage B}
    {D : SignalTransductionCascadeEvidence C} {G : GeneRegulationNetworkPackage D}
    {E : GeneRegulationNetworkEvidence G} (F : CellFateDecisionPackage E) : Prop :=
  F.proliferationSignal ∧ F.differentiationSignal ∧ F.apoptosisSignal ∧
  F.cellCycleArrest ∧ F.metabolicReprogramming

theorem cell_fate_decision_closed_from_evidence
    {R : ReceptorLigandBindingPackage} {B : ReceptorLigandBindingEvidence R}
    {C : SignalTransductionCascadePackage B} {D : SignalTransductionCascadeEvidence C}
    {G : GeneRegulationNetworkPackage D} {E : GeneRegulationNetworkEvidence G}
    (F : CellFateDecisionPackage E) (H : CellFateDecisionEvidence F) :
    CellFateDecisionClosed F := by
  exact And.intro H.proliferationSignalClosed
    (And.intro H.differentiationSignalClosed
      (And.intro H.apoptosisSignalClosed
        (And.intro H.cellCycleArrestClosed H.metabolicReprogrammingClosed)))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse
