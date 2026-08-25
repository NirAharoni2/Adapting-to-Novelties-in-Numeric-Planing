;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_1)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.4788783949238976)
		(= (value_axe a1) 0.09010024418320572)
		(= (value_axe a2) 0.019817176473073683)

        (= (value_pickaxe p0) 0.5494018488970029)
		(= (value_pickaxe p1) 0.2893757507238711)
		(= (value_pickaxe p2) 0.9900248256710366)
		(= (value_pickaxe p3) 0.05884705649262789)

        (= (value_shovel s0) 4.642374886250198)
		(= (value_shovel s1) 3.521714366501409)

        (= (value_hoe h0) 25.594911004999954)
		(= (value_hoe h1) 26.537433580485477)
		(= (value_hoe h2) 15.234391572237078)
		(= (value_hoe h3) 28.859187204759664)
		(= (value_hoe h4) 10.512793634670977)

        (= (trees_in_map) 40)

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

