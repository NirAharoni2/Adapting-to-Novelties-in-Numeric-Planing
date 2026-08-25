;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_30)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.39229195176641574)
		(= (value_axe a1) 0.6013702641886269)
		(= (value_axe a2) 0.4958867172942949)
		(= (value_axe a3) 0.3237111818953947)
		(= (value_axe a4) 0.42999943154834497)

        (= (value_pickaxe p0) 0.4058078068377441)
		(= (value_pickaxe p1) 0.03620920150366824)

        (= (value_shovel s0) 7.430123547205133)
		(= (value_shovel s1) 2.268619090843242)
		(= (value_shovel s2) 3.5072007740642586)

        (= (value_hoe h0) 15.933531111221459)
		(= (value_hoe h1) 17.27371999231247)
		(= (value_hoe h2) 27.304992704769784)

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

