import HautevilleHouse.CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean.CellSignalingBridgeLemmas

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure ReceptorLigandBindingPackage where
  bindingAffinity : Prop
  conformationalChange : Prop
  dimerization : Prop
  signalInitiation : Prop

structure ReceptorLigandBindingEvidence (R : ReceptorLigandBindingPackage) where
  bindingAffinityClosed : R.bindingAffinity
  conformationalChangeClosed : R.conformationalChange
  dimerizationClosed : R.dimerization
  signalInitiationClosed : R.signalInitiation

def ReceptorLigandBindingClosed (R : ReceptorLigandBindingPackage) : Prop :=
  R.bindingAffinity ∧ R.conformationalChange ∧ R.dimerization ∧ R.signalInitiation

theorem receptor_ligand_binding_closed_from_evidence (R : ReceptorLigandBindingPackage) (E : ReceptorLigandBindingEvidence R) :
    ReceptorLigandBindingClosed R := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.conformationalChangeClosed
      (And.intro E.dimerizationClosed E.signalInitiationClosed))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse