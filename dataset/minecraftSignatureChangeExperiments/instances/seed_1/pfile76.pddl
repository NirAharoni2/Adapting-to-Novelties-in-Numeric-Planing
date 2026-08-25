;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_76)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.2327185374478351)
		(= (value_axe a1) 0.6586348703316944)
		(= (value_axe a2) 0.5860566569974341)

        (= (value_pickaxe p0) 0.7571440918510132)
		(= (value_pickaxe p1) 0.9845425863899402)
		(= (value_pickaxe p2) 0.3410371311446776)
		(= (value_pickaxe p3) 0.05179848863526759)
		(= (value_pickaxe p4) 0.04419979329448964)

        (= (value_shovel s0) 5.2742672505785455)
		(= (value_shovel s1) 7.238942504180912)
		(= (value_shovel s2) 6.976574326654046)
		(= (value_shovel s3) 7.569718763222277)

        (= (value_hoe h0) 19.38312248037091)
		(= (value_hoe h1) 21.66645132020834)
		(= (value_hoe h2) 11.297508774782486)

        (= (trees_in_map) 38)

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

