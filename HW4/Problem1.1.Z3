(declare-sort S)
(declare-fun e () S)
(declare-fun mult (S S) S)
(declare-fun inv (S) S)
(assert (forall ((x S) (y S) (z S)) (= (mult (mult x y) z) (mult x (mult y z)))))
(assert (forall ((x S) (y S) (z S)) (= (mult x (mult y z)) (mult (mult x y) z))))
(assert (forall ((x S)) (= (mult e x)  x)))
(assert (forall ((x S)) (= (mult (inv x) x) e)))
(assert (forall ((x S)) (= (mult x e)  x)))
(assert (forall ((x S)) (= (mult x (inv x)) e)))
(check-sat)

(declare-fun c () S)
(assert (= (mult c e) c))
(assert (= (mult e c) c))
(assert (= (mult c e) e))
(assert (= (mult e c) e))
(assert (not (= c e)))
(check-sat)
