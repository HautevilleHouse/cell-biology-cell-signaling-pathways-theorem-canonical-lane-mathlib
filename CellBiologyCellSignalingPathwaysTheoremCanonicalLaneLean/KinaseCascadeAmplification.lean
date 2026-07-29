import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure KinaseCascadePackage where
  kinaseLevels : Nat
  phosphorylationEvents : Prop
  amplificationFactor : Prop
  signalPropagation : Prop

structure KinaseCascadeEvidence (K : KinaseCascadePackage) where
  phosphorylationEventsClosed : K.phosphorylationEvents
  amplificationFactorClosed : K.amplificationFactor
  signalPropagationClosed : K.signalPropagation

def KinaseCascadeClosed (K : KinaseCascadePackage) : Prop :=
  K.phosphorylationEvents ∧ K.amplificationFactor ∧ K.signalPropagation

theorem kinase_cascade_closed_from_evidence (K : KinaseCascadePackage)
    (E : KinaseCascadeEvidence K) : KinaseCascadeClosed K := by
  exact And.intro E.phosphorylationEventsClosed
    (And.intro E.amplificationFactorClosed E.signalPropagationClosed)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse