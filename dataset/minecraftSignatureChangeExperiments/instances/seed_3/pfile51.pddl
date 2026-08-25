;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_51)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.267622925221762)
		(= (value_axe a1) 0.4828427766395039)

        (= (value_pickaxe p0) 0.26786315656753135)
		(= (value_pickaxe p1) 0.5461286497081915)
		(= (value_pickaxe p2) 0.04713710527610748)
		(= (value_pickaxe p3) 0.2359438127769965)

        (= (value_shovel s0) 7.702965871813167)
		(= (value_shovel s1) 2.0095172304598785)

        (= (value_hoe h0) 28.109840706814325)
		(= (value_hoe h1) 13.558233334126344)
		(= (value_hoe h2) 29.856330971022658)
		(= (value_hoe h3) 23.49194949829681)
		(= (value_hoe h4) 22.938618363220666)

        (= (trees_in_map) 24)

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

