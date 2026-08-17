;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_41)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.4832350874600537)
		(= (value_axe a1) 0.5962229811007778)
		(= (value_axe a2) 0.2443458981985107)
		(= (value_axe a3) 0.41827418864331134)
		(= (value_axe a4) 0.08442463431781821)

        (= (value_pickaxe p0) 0.8894113299739729)
		(= (value_pickaxe p1) 0.33070003380800894)
		(= (value_pickaxe p2) 0.42181514971315004)
		(= (value_pickaxe p3) 0.14917055603561047)
		(= (value_pickaxe p4) 0.2956558507872764)

        (= (value_shovel s0) 4.885104181052272)
		(= (value_shovel s1) 4.943634631388963)
		(= (value_shovel s2) 4.036803546041115)

        (= (value_hoe h0) 16.521127163547447)
		(= (value_hoe h1) 12.046267635577708)
		(= (value_hoe h2) 25.735030575130196)
		(= (value_hoe h3) 16.60289358033591)
		(= (value_hoe h4) 11.524159768431204)

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

