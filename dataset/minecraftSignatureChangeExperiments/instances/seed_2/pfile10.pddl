;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.5261899437805846)
		(= (value_axe a1) 0.00482478105362838)
		(= (value_axe a2) 0.035499411707764605)
		(= (value_axe a3) 0.4087264177220743)

        (= (value_pickaxe p0) 0.111174967229976)
		(= (value_pickaxe p1) 0.7237696728693049)
		(= (value_pickaxe p2) 0.24086551444166326)
		(= (value_pickaxe p3) 0.09977308675499097)

        (= (value_shovel s0) 2.272320548102977)
		(= (value_shovel s1) 2.6206780056399857)
		(= (value_shovel s2) 2.5214754430285145)
		(= (value_shovel s3) 4.645154548335283)
		(= (value_shovel s4) 4.250821778006882)

        (= (value_hoe h0) 16.19452141754826)
		(= (value_hoe h1) 22.835175153613495)
		(= (value_hoe h2) 14.248994839889795)
		(= (value_hoe h3) 28.13125353463365)

        (= (trees_in_map) 26)

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

