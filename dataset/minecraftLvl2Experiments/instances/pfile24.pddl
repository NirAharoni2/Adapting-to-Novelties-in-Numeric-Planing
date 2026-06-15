;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_24)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.5656049033164413)
		(= (value_axe a1) 0.3370000376128438)
		(= (value_axe a2) 0.21029065610692477)
		(= (value_axe a3) 0.6958051866367146)

        (= (value_pickaxe p0) 0.8427938602677043)
		(= (value_pickaxe p1) 0.6091654037647036)
		(= (value_pickaxe p2) 0.27344037235437135)

        (= (value_shovel s0) 5.955686430899536)
		(= (value_shovel s1) 5.320363855302321)
		(= (value_shovel s2) 7.648851393724232)

        (= (value_hoe h0) 11.411536471077097)
		(= (value_hoe h1) 17.274336803911268)

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

