;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_65)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.19495705183068246)
		(= (value_axe a1) 0.3238800461495378)
		(= (value_axe a2) 0.2925719896892762)
		(= (value_axe a3) 0.9573093496666858)
		(= (value_axe a4) 0.6459095630524427)

        (= (value_pickaxe p0) 0.4674589435412977)
		(= (value_pickaxe p1) 0.18425527547961218)

        (= (value_shovel s0) 1.3336300287698668)
		(= (value_shovel s1) 3.5718737453476685)

        (= (value_hoe h0) 29.48139976616161)
		(= (value_hoe h1) 18.888504544538236)
		(= (value_hoe h2) 23.509060070283134)
		(= (value_hoe h3) 27.60808918627466)
		(= (value_hoe h4) 10.951051670253989)

        (= (trees_in_map) 30)

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

