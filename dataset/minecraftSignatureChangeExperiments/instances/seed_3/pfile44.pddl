;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_44)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.4873088729584989)
		(= (value_axe a1) 0.8099860377641318)
		(= (value_axe a2) 0.2843442184955126)
		(= (value_axe a3) 0.37500604971983154)
		(= (value_axe a4) 0.8060137545775159)

        (= (value_pickaxe p0) 0.6342546073539611)
		(= (value_pickaxe p1) 0.9428162661295063)

        (= (value_shovel s0) 4.019057766970839)
		(= (value_shovel s1) 7.580076361016006)
		(= (value_shovel s2) 4.3187116137264905)

        (= (value_hoe h0) 29.97153573365121)
		(= (value_hoe h1) 14.452268385844569)
		(= (value_hoe h2) 29.130623020633152)

        (= (trees_in_map) 29)

		(= (count_log_in_inventory) 0)

        (= (count_planks_in_inventory) 0)

        (= (count_stick_in_inventory) 0)

		(= (count_sack_polyisoprene_pellets_in_inventory) 0)

        (= (count_tree_tap_in_inventory) 0)

        (= (count_pogo_stick) 0)
	)
	(:goal
		(and
			(= (count_pogo_stick) 1)
		)
	)
)

