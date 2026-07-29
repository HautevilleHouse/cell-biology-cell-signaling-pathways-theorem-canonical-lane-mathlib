import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure ReceptorLigandBindingPackage where
  receptor : Type u
  ligand : Type v
  bindingAffinity : Prop
  dissociationConstant : Prop
  boundComplexFormed : Prop

structure ReceptorLigandBindingEvidence (P : ReceptorLigandBindingPackage) where
  bindingAffinityClosed : P.bindingAffinity
  dissociationConstantClosed : P.dissociationConstant
  boundComplexFormedClosed : P.boundComplexFormed

def ReceptorLigandBindingClosed (P : ReceptorLigandBindingPackage) : Prop :=
  P.bindingAffinity ∧ P.dissociationConstant ∧ P.boundComplexFormed

theorem receptor_ligand_binding_closed_from_evidence
    (P : ReceptorLigandBindingPackage) (E : ReceptorLigandBindingEvidence P) :
    ReceptorLigandBindingClosed P := by
  exact And.intro E.bindingAffinityClosed
    (And.intro E.dissociationConstantClosed E.boundComplexFormedClosed)

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse