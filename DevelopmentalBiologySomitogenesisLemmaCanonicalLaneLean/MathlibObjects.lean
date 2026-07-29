import DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure SomitogenesisSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SomitogenesisAdmittedObject where
  space : SomitogenesisSpace
  timeSeries : Prop
  segmentPatterning : Prop
  clockWavefrontModel : Type
  somiteFormation : Prop
  conclusion : somiteFormation

structure SomitogenesisEndgameState where
  object : SomitogenesisAdmittedObject

def SomitogenesisWitnessClosed (O : SomitogenesisAdmittedObject) : Prop :=
  O.somiteFormation

end DevelopmentalBiologySomitogenesisLemmaCanonicalLaneLean
end HautevilleHouse
