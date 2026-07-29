import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure EndpointSignalingOutcomePackage where
  cellularResponse : Prop
  survivalProliferation : Prop
  differentiation : Prop
  apoptosis : Prop
  metabolicChange : Prop

structure EndpointSignalingOutcomeEvidence (E : EndpointSignalingOutcomePackage) where
  cellularResponseClosed : E.cellularResponse
  survivalProliferationClosed : E.survivalProliferation
  differentiationClosed : E.differentiation
  apoptosisClosed : E.apoptosis
  metabolicChangeClosed : E.metabolicChange

def EndpointSignalingOutcomeClosed (E : EndpointSignalingOutcomePackage) : Prop :=
  E.cellularResponse ∧ E.survivalProliferation ∧ E.differentiation ∧
  E.apoptosis ∧ E.metabolicChange

theorem endpoint_signaling_outcome_closed_from_evidence
    (E : EndpointSignalingOutcomePackage) (Ev : EndpointSignalingOutcomeEvidence E) :
    EndpointSignalingOutcomeClosed E := by
  exact And.intro Ev.cellularResponseClosed
    (And.intro Ev.survivalProliferationClosed
      (And.intro Ev.differentiationClosed
        (And.intro Ev.apoptosisClosed Ev.metabolicChangeClosed)))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse