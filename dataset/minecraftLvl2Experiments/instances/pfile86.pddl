;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_86)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.40314570051092824)
		(= (value_axe a1) 0.9882836527603243)
		(= (value_axe a2) 0.72514057406389)

        (= (value_pickaxe p0) 0.3569560264310555)
		(= (value_pickaxe p1) 0.8338882958477574)
		(= (value_pickaxe p2) 0.9502177484126269)

        (= (value_shovel s0) 3.7504548422001776)
		(= (value_shovel s1) 2.52264088679215)
		(= (value_shovel s2) 7.4502178693822945)

        (= (value_hoe h0) 24.835181959262655)
		(= (value_hoe h1) 13.595425481046776)
		(= (value_hoe h2) 21.436447335325052)
		(= (value_hoe h3) 27.055476026935704)

        (= (trees_in_map) 21)

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

