import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure SignalReceptorPackage where
  receptorType : Type u
  membraneDomain : Type v
  extracellularDomain : Type w
  intracellularDomain : Type x
  ligandBindingSite : Prop
  conformationalChangeOnBinding : Prop
  dimerizationCapable : Prop
  kinaseActivity : Prop
  phosphataseRecruitment : Prop

structure SignalReceptorEvidence (R : SignalReceptorPackage) where
  ligandBindingSiteClosed : R.ligandBindingSite
  conformationalChangeOnBindingClosed : R.conformationalChangeOnBinding
  dimerizationCapableClosed : R.dimerizationCapable
  kinaseActivityClosed : R.kinaseActivity
  phosphataseRecruitmentClosed : R.phosphataseRecruitment

def SignalReceptorClosed (R : SignalReceptorPackage) : Prop :=
  R.ligandBindingSite ∧ R.conformationalChangeOnBinding ∧ R.dimerizationCapable ∧ R.kinaseActivity ∧ R.phosphataseRecruitment

theorem signal_receptor_closed_from_evidence (R : SignalReceptorPackage) (E : SignalReceptorEvidence R) : SignalReceptorClosed R := by
  exact And.intro E.ligandBindingSiteClosed (And.intro E.conformationalChangeOnBindingClosed (And.intro E.dimerizationCapableClosed (And.intro E.kinaseActivityClosed E.phosphataseRecruitmentClosed)))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse