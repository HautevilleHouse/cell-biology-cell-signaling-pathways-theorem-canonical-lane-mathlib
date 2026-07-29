import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure KinaseCascadePackage where
  kinaseA : Type u
  kinaseB : Type v
  kinaseC : Type w
  phosphorylationStep1 : Prop
  phosphorylationStep2 : Prop
  signalAmplification : Prop

structure KinaseCascadeEvidence (K : KinaseCascadePackage) where
  phosphorylationStep1Closed : K.phosphorylationStep1
  phosphorylationStep2Closed : K.phosphorylationStep2
  signalAmplificationClosed : K.signalAmplification

def KinaseCascadeClosed (K : KinaseCascadePackage) : Prop :=
  K.phosphorylationStep1 ∧ K.phosphorylationStep2 ∧ K.signalAmplification

theorem kinase_cascade_closed_from_evidence
    (K : KinaseCascadePackage) (E : KinaseCascadeEvidence K) :
    KinaseCascadeClosed K := by
  exact And.intro E.phosphorylationStep1Closed
    (And.intro E.phosphorylationStep2Closed E.signalAmplificationClosed)

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse