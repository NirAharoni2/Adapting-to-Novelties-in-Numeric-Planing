;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_2)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.5240327155707235)
		(= (value_axe a1) 0.046391765218186665)

        (= (value_pickaxe p0) 0.4788779629264964)
		(= (value_pickaxe p1) 0.15453928516079007)
		(= (value_pickaxe p2) 0.6696926078706251)
		(= (value_pickaxe p3) 0.08966991645263833)

        (= (value_shovel s0) 4.713133157164246)
		(= (value_shovel s1) 5.938627150975811)
		(= (value_shovel s2) 5.437207444283442)
		(= (value_shovel s3) 7.878663629589445)
		(= (value_shovel s4) 1.2817565501399248)

        (= (value_hoe h0) 13.253189796254475)
		(= (value_hoe h1) 27.80175471793384)
		(= (value_hoe h2) 27.14811059058533)
		(= (value_hoe h3) 21.981792667897466)

        (= (trees_in_map) 23)

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

