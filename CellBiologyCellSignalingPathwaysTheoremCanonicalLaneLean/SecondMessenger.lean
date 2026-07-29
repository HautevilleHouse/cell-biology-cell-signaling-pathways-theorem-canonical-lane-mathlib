import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure SecondMessengerPackage where
  campProduction : Prop
  calciumRelease : Prop
  ip3Synthesis : Prop
  dagActivation : Prop

structure SecondMessengerEvidence (S : SecondMessengerPackage) where
  campProductionClosed : S.campProduction
  calciumReleaseClosed : S.calciumRelease
  ip3SynthesisClosed : S.ip3Synthesis
  dagActivationClosed : S.dagActivation

def SecondMessengerClosed (S : SecondMessengerPackage) : Prop :=
  S.campProduction ∧ S.calciumRelease ∧ S.ip3Synthesis ∧ S.dagActivation

theorem second_messenger_closed_from_evidence (S : SecondMessengerPackage) (E : SecondMessengerEvidence S) : SecondMessengerClosed S := by
  exact And.intro E.campProductionClosed (And.intro E.calciumReleaseClosed (And.intro E.ip3SynthesisClosed E.dagActivationClosed))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse