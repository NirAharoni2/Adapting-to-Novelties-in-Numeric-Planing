;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_93)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.9367315262528699)
		(= (value_axe a1) 0.6251034733445686)
		(= (value_axe a2) 0.23779718171816044)

        (= (value_pickaxe p0) 0.6750412327464124)
		(= (value_pickaxe p1) 0.11868740088972363)
		(= (value_pickaxe p2) 0.36773552492033024)
		(= (value_pickaxe p3) 0.19199212501180574)

        (= (value_shovel s0) 4.618179371196259)
		(= (value_shovel s1) 1.7076114267868785)

        (= (value_hoe h0) 16.50362513057928)
		(= (value_hoe h1) 16.032571567420646)
		(= (value_hoe h2) 21.98045105405936)

        (= (trees_in_map) 40)

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

