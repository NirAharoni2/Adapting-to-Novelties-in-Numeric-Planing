;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_53)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.7969454460121769)
		(= (value_axe a1) 0.6494331853690045)
		(= (value_axe a2) 0.9936030573478015)
		(= (value_axe a3) 0.5073290749495833)
		(= (value_axe a4) 0.06882782793151176)

        (= (value_pickaxe p0) 0.6045508761246775)
		(= (value_pickaxe p1) 0.9554612648134431)

        (= (value_shovel s0) 7.707619029092725)
		(= (value_shovel s1) 3.0064294366671467)
		(= (value_shovel s2) 3.214770174171879)
		(= (value_shovel s3) 3.174512939719568)

        (= (value_hoe h0) 24.856621012600737)
		(= (value_hoe h1) 29.662966294726772)

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

