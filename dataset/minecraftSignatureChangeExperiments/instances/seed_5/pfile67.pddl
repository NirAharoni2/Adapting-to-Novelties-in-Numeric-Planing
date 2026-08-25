;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_67)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.056833859261413155)
		(= (value_axe a1) 0.014476591270675243)
		(= (value_axe a2) 0.7660963102419843)
		(= (value_axe a3) 0.10630121955417793)

        (= (value_pickaxe p0) 0.45809707708025516)
		(= (value_pickaxe p1) 0.43842832668761067)

        (= (value_shovel s0) 6.620368303998913)
		(= (value_shovel s1) 4.336339935836722)
		(= (value_shovel s2) 4.652439031912943)

        (= (value_hoe h0) 10.495955909678266)
		(= (value_hoe h1) 25.90529705570436)
		(= (value_hoe h2) 25.347919853412918)
		(= (value_hoe h3) 22.470115194510534)
		(= (value_hoe h4) 26.696276160845414)

        (= (trees_in_map) 39)

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

