import HautevilleHouse.CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CellSignalingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse