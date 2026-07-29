import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean.SignalReceptor

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure LigandBindingPackage (R : SignalReceptorPackage) where
  ligandType : Type u
  bindingAffinity : Prop
  bindingKinetics : Prop
  dissociationConstant : Prop
  cooperativity : Prop
  bindingSiteAccessibility : Prop

structure LigandBindingEvidence {R : SignalReceptorPackage} (L : LigandBindingPackage R) where
  bindingAffinityClosed : L.bindingAffinity
  bindingKineticsClosed : L.bindingKinetics
  dissociationConstantClosed : L.dissociationConstant
  cooperativityClosed : L.cooperativity
  bindingSiteAccessibilityClosed : L.bindingSiteAccessibility

def LigandBindingClosed {R : SignalReceptorPackage} (L : LigandBindingPackage R) : Prop :=
  L.bindingAffinity ∧ L.bindingKinetics ∧ L.dissociationConstant ∧ L.cooperativity ∧ L.bindingSiteAccessibility

theorem ligand_binding_closed_from_evidence {R : SignalReceptorPackage} (L : LigandBindingPackage R) (E : LigandBindingEvidence L) : LigandBindingClosed L := by
  exact And.intro E.bindingAffinityClosed (And.intro E.bindingKineticsClosed (And.intro E.dissociationConstantClosed (And.intro E.cooperativityClosed E.bindingSiteAccessibilityClosed)))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse