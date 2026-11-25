module

public import Development.AbelianVarietyTheory.BlockTheory.CMModuli.TorusGraphMaps
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PushInvertible
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.DegOUnif
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.DegExp
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.QkToAkU
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsShiftGen
public import Development.AbelianVarietyTheory.Definitions.Degenerations.HomExtSt
public import Development.AbelianVarietyTheory.Definitions.Degenerations.RigGen
public import Development.AbelianVarietyTheory.Counterexamples.ModuliSurvey.DeltaIsGreatest
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsMumfordFamOfSubsingleton
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOneOfFiniteOrderAny
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ImportsTer
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.NormPsiPullLocalRingsOfIntegers
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.QkToAkInjectiveClosed
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsDescOfPoints
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.InjectiveOfIsAlgebraic
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.ExistsCommonField
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.IsNsmulIffEq
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional
import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsQkPullEquiv
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsSemiAbelianOfUniformisationOverDvr
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.QkToAkBaseChange
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.QkToAkDescendsAlongBaseChange
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.BlockTheory.CMModuli.TateUniformizationInput, Development.AbelianVarietyTheory.Proofs.ModuliProofs.ArcClauseOfNotFrac, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedModelBaseChangeCompleteDvrExtension

-- ===== clump member: Development.AbelianVarietyTheory.BlockTheory.CMModuli.TateUniformizationInput =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.BlockTheory.CMModuli.TateUniformizationInput", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.CMModuli.TorusGraphMaps\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PushInvertible\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory
  CartesianMonoidalCategory MonObj NumberField

namespace GlobalTheory.IndefiniteRowSideFullHecke.TateUniformizationInput

open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.IndefiniteRowSideFullHecke.TorusGraphMaps

section Points

variable {R : Type} [CommRing R] [IsDomain R] {P : DegPre R}
variable {F : Type} [Field F] [Algebra (FractionRing R) F]

def QkZero {k : ℕ} (p : QkPt P F k) : Prop :=
  ∃ z : P.X, p.y = k • z ∧ GtPtF.IsIota z p.g

def QkTower (m : ℕ) {k n : ℕ} (p : QkPt P F k) (p' : QkPt P F n) : Prop :=
  k = n * m ∧ ∃ q : QkPt P F n, q.y = p.y ∧ GtPtF.IsNsmul m p.g q.g ∧ QkPt.Equiv P F q p'

end Points

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

section Levels

abbrev levelA (l : Level H) : ℕ+ := ⟨l.A, l.A_pos⟩

end Levels

section Base

variable {l : Level H} (c : Coeff l)

def coeffZeta : c.F := IntermediateField.inclusion c.le (baseKA l).ζ

end Base

end GlobalTheory.IndefiniteRowSideFullHecke.TateUniformizationInput
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.BlockTheory.CMModuli.TateUniformizationInput =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.ArcClauseOfNotFrac =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.ModuliProofs.ArcClauseOfNotFrac", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.QkToAkU\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsShiftGen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.BlockTheory.CMModuli.TateUniformizationInput\nimport Development.AbelianVarietyTheory.BlockTheory.CMModuli.TorusGraphMaps\npublic import Development.AbelianVarietyTheory.BlockTheory.CMModuli.UniformTorsionIsomorphism\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.HomExtSt\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsDescOfPoints\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.InjectiveOfIsAlgebraic\nimport Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.ExistsCommonField\nimport Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.IsNsmulIffEq\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory
  CartesianMonoidalCategory MonObj NumberField

namespace GlobalTheory.ArcClauseCompare

open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.IndefiniteRowSideFullHecke GlobalTheory.TorusExt GlobalTheory.ArcInputCompare GlobalTheory.ArcDataDescent GlobalTheory.LN
open scoped CategoryTheory.Obj

theorem qkToAkU_of_equiv {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} {D : DegData R I}
    {A : PolAV (Spec (CommRingCat.of (FractionRing R)))} {G : Over (Spec (CommRingCat.of R))} [GrpObj G]
    [IsCommMonObj G] (U : UnifPre I D A G) {F : Type} [Field F] [Algebra (FractionRing R) F] {k : ℕ} (hk : 1 ≤ k)
    {p q : QkPt D.toPre F k} (e : QkPt.Equiv D.toPre F p q) {x : TFK (R := R) F ⟶ A.A} (h : QkToAkU U F k p x) :
    QkToAkU U F k q x := by
  obtain ⟨z, hy, g, hι, hadd⟩ := e
  refine fun w₀ hw₀ => ⟨(h w₀ hw₀).1, fun θ hθ => ?_⟩
  obtain ⟨w, hw, H⟩ := (h w₀ hw₀).2 θ hθ
  obtain ⟨w₂, hw₂, H₂⟩ := QkShift.qk_shift globalFns_holds R D.toPre D.tau_bimult F k hk p q z g hy hι hadd w hw
  exact ⟨w₂, hw₂, fun t t' s s' a b c => H₂ s s' (H t t' s s' a b c)⟩

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H} {l : Level H} {c : Coeff l}
  {O : Type} [CommRing O] {β : O →+* c.F} {O' : Type} [CommRing O'] [IsDomain O'] {b : O →+* O'}
  {R : Type} [CommRing R] [IsDomain R] {f : O' →+* R} {u : R}

variable {Xo : Moduli D l} (Y : Model Xo c β)

end GlobalTheory.ArcClauseCompare
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.ModuliProofs.ArcClauseOfNotFrac =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedModelBaseChangeCompleteDvrExtension =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedModelBaseChangeCompleteDvrExtension", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.RigGen\npublic import Development.AbelianVarietyTheory.Counterexamples.ModuliSurvey.DeltaIsGreatest\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsMumfordFamOfSubsingleton\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsQkPullEquiv\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOneOfFiniteOrderAny\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ArcClauseOfNotFrac\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ImportsTer\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.NormPsiPullLocalRingsOfIntegers\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsSemiAbelianOfUniformisationOverDvr\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.QkToAkBaseChange\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.QkToAkDescendsAlongBaseChange\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.QkToAkInjectiveClosed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.ZH
open scoped CategoryTheory.Obj
open GlobalTheory.Poinc

noncomputable section

namespace GlobalTheory.Poinc.UTestBaseChange

theorem baseChange : ∀ (o Ω : Type) [CommRing o] [Field Ω] [Algebra o Ω] (S : ThetaSys o Ω) (ρ : S.Real) (p : ℕ) [Fact p.Prime] (y₀ : S.R →+* PadicAlgCl p) (u : ρ.UTest p y₀) (V₂ : Type) [CommRing V₂] [IsDomain V₂] [IsDiscreteValuationRing V₂] [Algebra (FractionRing V₂) (PadicAlgCl p)], IsAdicComplete (IsLocalRing.maximalIdeal V₂) V₂ → (∀ x : FractionRing V₂, ‖algebraMap (FractionRing V₂) (PadicAlgCl p) x‖ ≤ 1 ↔ x ∈ Set.range (algebraMap V₂ (FractionRing V₂))) → ∀ σ : FractionRing u.V →+* FractionRing V₂, (algebraMap (FractionRing V₂) (PadicAlgCl p)).comp σ = algebraMap (FractionRing u.V) (PadicAlgCl p) →
  ∃ (u' : ρ.UTest p y₀) (τ : FractionRing V₂ →+* FractionRing u'.V) (e : u'.D.toPre.X ≃+ u.D.toPre.X) (T : (TFK (R := u'.V) (PadicAlgCl p) ⟶ u'.A.A) ≃ (TFK (R := u.V) (PadicAlgCl p) ⟶ u.A.A)),
    (algebraMap (FractionRing u'.V) (PadicAlgCl p)).comp τ = algebraMap (FractionRing V₂) (PadicAlgCl p) ∧
    (∀ χ r, u.PsiNorm (e χ) r → u'.PsiNorm χ r) ∧
    (∀ x, (T x).left ≫ u.φ = x.left ≫ u'.φ) ∧
    (∀ (m : ℕ) (pk' : QkPt u'.D.toPre (PadicAlgCl p) m) x', 1 ≤ m → QkToAkU u'.U.toUnifPre (PadicAlgCl p) m pk' x' → ∃ pk : QkPt u.D.toPre (PadicAlgCl p) m, pk.y = e pk'.y ∧ QkToAkU u.U.toUnifPre (PadicAlgCl p) m pk (T x')) ∧
    (∀ (m : ℕ) (pk : QkPt u.D.toPre (PadicAlgCl p) m) x, 1 ≤ m → QkToAkU u.U.toUnifPre (PadicAlgCl p) m pk x → ∃ pk' : QkPt u'.D.toPre (PadicAlgCl p) m, e pk'.y = pk.y ∧ QkToAkU u'.U.toUnifPre (PadicAlgCl p) m pk' (T.symm x)) := by
  intro o Ω _ _ _ S ρ p _ y₀ u V₂ _ _ _ _ hc₂ hn₂ σ hσ
  have inj₂ := IsFractionRing.injective V₂ (FractionRing V₂)
  have hσv : ∀ z, algebraMap (FractionRing V₂) (PadicAlgCl p) (σ z) = algebraMap (FractionRing u.V) (PadicAlgCl p) z :=
    fun z => RingHom.congr_fun hσ z
  have hmem : ∀ v : u.V, σ (algebraMap u.V (FractionRing u.V) v) ∈ Set.range (algebraMap V₂ (FractionRing V₂)) :=
    fun v => (hn₂ _).1 (by rw [hσv]; exact (u.norm_le _).2 ⟨v, rfl⟩)
  choose gf hgf using hmem
  let g : u.V →+* V₂ :=
    { toFun := gf
      map_one' := inj₂ (by rw [hgf, map_one, map_one, map_one])
      map_mul' := fun a b => inj₂ (by rw [map_mul, hgf, hgf, hgf, map_mul, map_mul])
      map_zero' := inj₂ (by rw [hgf, map_zero, map_zero, map_zero])
      map_add' := fun a b => inj₂ (by rw [map_add (f := _), hgf, hgf, hgf, map_add (f := _), map_add (f := _)]) }
  have hgv : ∀ v, algebraMap V₂ (FractionRing V₂) (g v) = σ (algebraMap u.V _ v) := hgf
  have hK : σ.comp (algebraMap u.V _) = (algebraMap V₂ _).comp g := RingHom.ext fun v => (hgv v).symm
  have hg : Function.Injective g := fun a b h =>
    IsFractionRing.injective u.V (FractionRing u.V) (σ.injective (by rw [← hgv, ← hgv, h]))
  have hI : (IsLocalRing.maximalIdeal u.V).map g ≤ IsLocalRing.maximalIdeal V₂ := by
    rw [Ideal.map_le_iff_le_comap]
    intro v hv
    rw [Ideal.mem_comap, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    rintro ⟨w, hw⟩
    apply (IsLocalRing.mem_maximalIdeal _).1 hv
    have hv0 : algebraMap u.V (FractionRing u.V) v ≠ 0 := by
      intro h0
      have : g v = 0 := inj₂ (by rw [hgv, h0, map_zero, map_zero])
      rw [← hw] at this
      exact w.ne_zero this
    have e1 : algebraMap V₂ (FractionRing V₂) (w⁻¹ : V₂ˣ) = σ (algebraMap u.V _ v)⁻¹ := by
      rw [map_inv₀ σ, ← hgv, ← hw]
      exact eq_inv_of_mul_eq_one_left (by rw [← map_mul, Units.inv_mul, map_one])
    obtain ⟨t, ht⟩ := (u.norm_le _).1 (by rw [← hσv, ← e1]; exact (hn₂ _).2 ⟨_, rfl⟩)
    refine isUnit_iff_exists_inv.2 ⟨t, IsFractionRing.injective u.V (FractionRing u.V) ?_⟩
    rw [map_mul, ht, mul_inv_cancel₀ hv0, map_one]
  have aV : AdmBase u.V (IsLocalRing.maximalIdeal u.V) := ⟨inferInstance, inferInstance, inferInstance, u.complete⟩
  have aV₂ : AdmBase V₂ (IsLocalRing.maximalIdeal V₂) := ⟨inferInstance, inferInstance, inferInstance, hc₂⟩
  have sq : spMap σ ≫ jK u.V = jK V₂ ≫ spMap g := by
    refine (Spec.map_comp _ _).symm.trans (Eq.trans ?_ (Spec.map_comp _ _))
    exact congrArg (fun f => Spec.map (CommRingCat.ofHom f)) hK
  obtain ⟨D', hD, A', gA, U', hPU, gp, hL, hgen⟩ := GlobalTheory.UnifMove.exists_pull aV aV₂ g hg hI σ sq u.semi u.U
  have hyK : spMap (σ.comp u.yK) = spMap σ ≫ spMap u.yK :=
    (Spec.map_comp (CommRingCat.ofHom u.yK) (CommRingCat.ofHom σ))
  have cart' : IsGrpPullback A'.A ρ.P.A (spMap (σ.comp u.yK)) (gA ≫ u.φ) := (gp.comp u.cart).congr hyK.symm rfl
  have lb' : LBIso A'.L (ρ.P.L.pull (gA ≫ u.φ)) :=
    LBIso.trans A'.isLB (pull_isLB u.A.isLB gA) (pull_isLB ρ.P.isLB _) hL (GlobalTheory.PolDeg.lbIso_pull_comp u.lb gA rfl)
  have semi' : IsSemiAbelian ((Over.pullback (specOf g)).obj u.G) :=
    GlobalTheory.isSemiAbelian_of_unifPre_dvr V₂ D' A' _ U'.toUnifPre
  have fac' : (algebraMap (FractionRing V₂) (PadicAlgCl p)).comp (σ.comp u.yK) = y₀ := by
    rw [← RingHom.comp_assoc, hσ, u.fac]
  let u' : ρ.UTest p y₀ :=
    { V := V₂, complete := hc₂, norm_le := hn₂, yK := σ.comp u.yK, fac := fac'
      A := A', φ := gA ≫ u.φ, cart := cart', lb := lb'
      G := (Over.pullback (specOf g)).obj u.G, semi := semi', D := D', U := U' }
  have sF : jFK (R := V₂) (PadicAlgCl p) ≫ spMap σ = jFK (R := u.V) (PadicAlgCl p) := by
    refine (Spec.map_comp _ _).symm.trans ?_
    exact congrArg (fun f => Spec.map (CommRingCat.ofHom f)) hσ
  have wI : ∀ x : TFK (R := u.V) (PadicAlgCl p) ⟶ u.A.A,
      x.left ≫ u.A.A.hom = jFK (R := V₂) (PadicAlgCl p) ≫ spMap σ :=
    fun x => (Over.w x).trans sF.symm
  let Tf : (TFK (R := V₂) (PadicAlgCl p) ⟶ A'.A) → (TFK (R := u.V) (PadicAlgCl p) ⟶ u.A.A) := fun x =>
    Over.homMk (x.left ≫ gA) (by
      show (x.left ≫ gA) ≫ u.A.A.hom = jFK (R := u.V) (PadicAlgCl p)
      rw [Category.assoc, gp.1.w, ← Category.assoc, Over.w x]; exact sF)
  let Ti : (TFK (R := u.V) (PadicAlgCl p) ⟶ u.A.A) → (TFK (R := V₂) (PadicAlgCl p) ⟶ A'.A) := fun x =>
    Over.homMk (gp.1.lift x.left (jFK (R := V₂) (PadicAlgCl p)) (wI x)) (gp.1.lift_snd _ _ _)
  let T : (TFK (R := u'.V) (PadicAlgCl p) ⟶ u'.A.A) ≃ (TFK (R := u.V) (PadicAlgCl p) ⟶ u.A.A) :=
    { toFun := Tf, invFun := Ti
      left_inv := fun x => Over.OverMorphism.ext
        (gp.1.hom_ext (gp.1.lift_fst _ _ _) ((gp.1.lift_snd _ _ _).trans (Over.w x).symm))
      right_inv := fun x => Over.OverMorphism.ext (gp.1.lift_fst _ _ _) }
  have hT : ∀ x, (T x).left = x.left ≫ gA := fun x => rfl
  have hTs : ∀ x, (T.symm x).left ≫ gA = x.left := fun x => gp.1.lift_fst _ _ _
  have hL2 := GlobalTheory.abelianSchemeLaws_all
  have hFc : ∀ r : u.V, algebraMap (FractionRing u.V) (PadicAlgCl p) (algebraMap u.V (FractionRing u.V) r) =
      algebraMap (FractionRing V₂) (PadicAlgCl p) (algebraMap V₂ (FractionRing V₂) (g r)) := fun r => by
    rw [hgv]; exact (hσv _).symm
  have hτall := fun m : ℕ => GlobalTheory.exists_qk_pull_equiv hL2.1 hL2.2 u.V V₂ g u.D.toPre D'.toPre hD u.D.tau_bimult
    D'.tau_bimult (PadicAlgCl p) hFc m
  choose τq hτq using hτall
  have mR : IsMonHom (Iso.refl ((Over.pullback (specOf g)).obj u.G)).hom := by
    show IsMonHom (𝟙 _); infer_instance
  have fwd : ∀ (m : ℕ) (pk : QkPt u.D.toPre (PadicAlgCl p) m) (x : TFK (R := u.V) (PadicAlgCl p) ⟶ u.A.A)
      (x' : TFK (R := V₂) (PadicAlgCl p) ⟶ A'.A), 1 ≤ m → x'.left ≫ gA = x.left →
      QkToAkU u.U.toUnifPre (PadicAlgCl p) m pk x → QkToAkU U'.toUnifPre (PadicAlgCl p) m (τq m pk) x' := by
    intro m pk x x' hm hx H
    obtain ⟨hy, hgq⟩ := ((hτq m).1 pk _).1 rfl
    refine GlobalTheory.qkToAk_baseChange hL2.1.globalFns hL2.1.secBaseChange u.V V₂ _ _ aV aV₂ g u.D u.A u.G u.U
      _ (Iso.refl _) mR A' D' hD U' hPU (PadicAlgCl p) hFc m hm pk x (τq m pk) x' hy hgq ?_ H
    have n : U'.gen.inv.left ≫ U'.gen.hom.left = 𝟙 _ := by
      rw [← Over.comp_left, U'.gen.inv_hom_id, Over.id_left]
    have hbc : (Iso.refl ((Over.pullback (specOf g)).obj u.G)).hom.left ≫ pullback.fst u.G.hom (specOf g) =
        pullback.fst u.G.hom (spMap g) := Category.id_comp _
    rw [hbc, ← hgen, ← Category.assoc U'.gen.inv.left, n, Category.id_comp, ← Category.assoc, hx]
  refine ⟨u', RingHom.id _, hD.xe, T, rfl, ?_, fun x => Category.assoc _ _ _, ?_, ?_⟩
  · intro χ r h j hj
    obtain ⟨j₀, hj₀⟩ := GlobalTheory.ZH.RealCase.exists_chart u (hD.xe χ)
    have e := GlobalTheory.ZH.PsiNormPull.norm_psi_pull p u.V V₂ g (fun v => by rw [hgv]; exact (hσv _).symm)
      (fun v => (hn₂ _).2 ⟨v, rfl⟩) u.D.toPre D'.toPre hD χ (j₀ PUnit.unit) (j PUnit.unit) hj₀ hj
    exact e.trans (h j₀ hj₀)
  · intro m pk' x' hm H'
    obtain ⟨w₀, hw₀⟩ := U'.ext
    open MonObj in
    have ht' : x' ^ m = 1 := (H' w₀ hw₀).1
    open MonObj in
    have ht : (T x') ^ m = 1 := GlobalTheory.ThetaDescent.pow_eq_one_of_pull sF gp (hT x').symm ht'
    have hmF : ((m : ℕ) : PadicAlgCl p) ≠ 0 := Nat.cast_ne_zero.2 (by omega)
    obtain ⟨pk₀, H₀⟩ := GlobalTheory.TorsionAnyChar.exists_qkToAkU u.V _ aV u.D u.A u.G u.semi u.U (PadicAlgCl p) m hmF
      (T x') ht
    have H₁ : QkToAkU U'.toUnifPre (PadicAlgCl p) m (τq m pk₀) x' := fwd m pk₀ (T x') x' hm rfl H₀
    have hE : QkPt.Equiv D'.toPre (PadicAlgCl p) (τq m pk₀) pk' :=
      GlobalTheory.TorsionMapInj.qkToAk_injective_closed V₂ _ aV₂ D' A' _ semi' U' (PadicAlgCl p) m hm _ _ x' H₁ H'
    have hE' : QkPt.Equiv u.D.toPre (PadicAlgCl p) pk₀ ((τq m).symm pk') :=
      ((hτq m).2.1 pk₀ ((τq m).symm pk')).2 (by rw [Equiv.apply_symm_apply]; exact hE)
    obtain ⟨hy, -⟩ := ((hτq m).1 ((τq m).symm pk') pk').1 (Equiv.apply_symm_apply _ _)
    refine ⟨(τq m).symm pk', ?_, GlobalTheory.ArcClauseCompare.qkToAkU_of_equiv u.U.toUnifPre hm hE' H₀⟩
    rw [hy, AddEquiv.apply_symm_apply]
  · intro m pk x hm H
    obtain ⟨hy, -⟩ := ((hτq m).1 pk _).1 rfl
    exact ⟨τq m pk, by rw [hy]; exact hD.xe.apply_symm_apply _, fwd m pk x (T.symm x) hm (hTs x) H⟩
end GlobalTheory.Poinc.UTestBaseChange
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedModelBaseChangeCompleteDvrExtension =====
