import cellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure ReceptorLigandBindingPackage where
  receptorType : Type u
  ligandType : Type v
  bindingAffinity : Prop
  conformationalChange : Prop
  dimerization : Prop

structure ReceptorLigandBindingEvidence (R : ReceptorLigandBindingPackage) where
  bindingAffinityClosed : R.bindingAffinity
  conformationalChangeClosed : R.conformationalChange
  dimerizationClosed : R.dimerization

def ReceptorLigandBindingClosed (R : ReceptorLigandBindingPackage) : Prop :=
  R.bindingAffinity ∧ R.conformationalChange ∧ R.dimerization

theorem receptor_ligand_binding_closed_from_evidence (R : ReceptorLigandBindingPackage)
    (E : ReceptorLigandBindingEvidence R) : ReceptorLigandBindingClosed R := by
  exact And.intro E.bindingAffinityClosed (And.intro E.conformationalChangeClosed E.dimerizationClosed)

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse