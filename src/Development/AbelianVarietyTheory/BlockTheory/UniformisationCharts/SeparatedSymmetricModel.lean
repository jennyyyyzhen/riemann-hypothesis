module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubicalPullBaseChangeSt

@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory
  CartesianMonoidalCategory MonObj
open scoped CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G.Semi

namespace GlobalTheory.IndefiniteRowSideFullHecke.SeparatedSymmetricModel

section BaseChange

variable {S S' : Scheme.{0}} (p : S' ⟶ S) {G : Over S} [GrpObj G] [IsCommMonObj G]

instance isComm_baseChange : IsCommMonObj ((Over.pullback p).obj G) :=
  Functor.isCommMonObj_obj

end BaseChange

end GlobalTheory.IndefiniteRowSideFullHecke.SeparatedSymmetricModel
