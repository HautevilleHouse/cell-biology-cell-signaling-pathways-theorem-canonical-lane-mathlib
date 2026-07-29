import HautevilleHouse.CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean.CellSignalingBridgeLemmas

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure SecondMessengerPackage where
  campProduction : Prop
  calciumFlux : Prop
  ip3Generation : Prop
  signalPropagation : Prop

structure SecondMessengerEvidence (S : SecondMessengerPackage) where
  campProductionClosed : S.campProduction
  calciumFluxClosed : S.calciumFlux
  ip3GenerationClosed : S.ip3Generation
  signalPropagationClosed : S.signalPropagation

def SecondMessengerClosed (S : SecondMessengerPackage) : Prop :=
  S.campProduction ∧ S.calciumFlux ∧ S.ip3Generation ∧ S.signalPropagation

theorem second_messenger_closed_from_evidence (S : SecondMessengerPackage) (E : SecondMessengerEvidence S) :
    SecondMessengerClosed S := by
  exact And.intro E.campProductionClosed
    (And.intro E.calciumFluxClosed
      (And.intro E.ip3GenerationClosed E.signalPropagationClosed))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse