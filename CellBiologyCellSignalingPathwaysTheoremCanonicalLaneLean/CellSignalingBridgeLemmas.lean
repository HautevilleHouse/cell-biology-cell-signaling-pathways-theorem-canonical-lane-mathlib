import HautevilleHouse.CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean.CellSignalingAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CellSignalPathwayClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse