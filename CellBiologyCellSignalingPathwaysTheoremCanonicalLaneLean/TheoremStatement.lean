import HautevilleHouse.CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean

structure CellSignalingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CellSignalingAdmittedObject where
  space : CellSignalingSpace
  signalPathwayConnected : Prop
  receptorLigandBinding : Prop
  cascadeAmplification : Prop
  transcriptionFactorActivation : Prop
  conclusion : signalPathwayConnected ∧ receptorLigandBinding ∧ cascadeAmplification ∧ transcriptionFactorActivation

structure CellSignalingEndgameState where
  object : CellSignalingAdmittedObject

def CellSignalingWitnessClosed (O : CellSignalingAdmittedObject) : Prop :=
  O.signalPathwayConnected ∧ O.receptorLigandBinding ∧ O.cascadeAmplification ∧ O.transcriptionFactorActivation

end CellBiologyCellSignalingPathwaysTheoremCanonicalLaneLean
end HautevilleHouse