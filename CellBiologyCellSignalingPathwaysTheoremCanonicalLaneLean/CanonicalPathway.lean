import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure CanonicalPathwayPackage {S : SignalTransductionPackage} (T : SignalTransductionPackage) where
  conservedCoreModule : Prop
  adaptationMechanism : Prop
  moduleInteroperability : Prop
  signalTermination : Prop

structure CanonicalPathwayEvidence {S : SignalTransductionPackage}
    {T : SignalTransductionPackage} (C : CanonicalPathwayPackage T) where
  conservedCoreModuleClosed : C.conservedCoreModule
  adaptationMechanismClosed : C.adaptationMechanism
  moduleInteroperabilityClosed : C.moduleInteroperability
  signalTerminationClosed : C.signalTermination

def CanonicalPathwayClosed {S : SignalTransductionPackage}
    {T : SignalTransductionPackage} (C : CanonicalPathwayPackage T) : Prop :=
  C.conservedCoreModule ∧ C.adaptationMechanism ∧
  C.moduleInteroperability ∧ C.signalTermination

theorem canonical_pathway_closed_from_evidence
    {S : SignalTransductionPackage} {T : SignalTransductionPackage}
    (C : CanonicalPathwayPackage T) (E : CanonicalPathwayEvidence C) :
    CanonicalPathwayClosed C := by
  exact And.intro E.conservedCoreModuleClosed
    (And.intro E.adaptationMechanismClosed
      (And.intro E.moduleInteroperabilityClosed E.signalTerminationClosed))

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse