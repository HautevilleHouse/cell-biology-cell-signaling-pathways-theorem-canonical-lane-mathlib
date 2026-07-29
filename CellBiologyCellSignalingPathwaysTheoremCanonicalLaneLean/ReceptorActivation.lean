import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure ReceptorActivationPackage where
  ligandBinding : Prop
  conformationalChange : Prop
  dimerization : Prop
  activationSignal : Prop

structure ReceptorActivationEvidence (R : ReceptorActivationPackage) where
  ligandBindingClosed : R.ligandBinding
  conformationalChangeClosed : R.conformationalChange
  dimerizationClosed : R.dimerization
  activationSignalClosed : R.activationSignal

def ReceptorActivationClosed (R : ReceptorActivationPackage) : Prop :=
  R.ligandBinding ∧ R.conformationalChange ∧ R.dimerization ∧ R.activationSignal

theorem receptor_activation_closed_from_evidence (R : ReceptorActivationPackage) (E : ReceptorActivationEvidence R) : ReceptorActivationClosed R := by
  exact And.intro E.ligandBindingClosed (And.intro E.conformationalChangeClosed (And.intro E.dimerizationClosed E.activationSignalClosed))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse