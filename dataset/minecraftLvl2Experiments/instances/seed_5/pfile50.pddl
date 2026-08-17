;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_50)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.11098331291855856)
		(= (value_axe a1) 0.6435083776669756)
		(= (value_axe a2) 0.37498882639101994)

        (= (value_pickaxe p0) 0.36869782139686635)
		(= (value_pickaxe p1) 0.4776827137735964)
		(= (value_pickaxe p2) 0.5817018258822202)
		(= (value_pickaxe p3) 0.9658536528854971)

        (= (value_shovel s0) 2.6864089128014563)
		(= (value_shovel s1) 4.980696089441108)

        (= (value_hoe h0) 15.261231961477284)
		(= (value_hoe h1) 20.907119514440094)
		(= (value_hoe h2) 24.628980515190094)
		(= (value_hoe h3) 12.671969121325393)

        (= (trees_in_map) 35)

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

