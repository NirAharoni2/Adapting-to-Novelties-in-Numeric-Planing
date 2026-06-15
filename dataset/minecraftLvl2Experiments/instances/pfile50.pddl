;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_50)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.32666753915196467)
		(= (value_axe a1) 0.8470408215446406)
		(= (value_axe a2) 0.19267439803083386)
		(= (value_axe a3) 0.2749085217488223)
		(= (value_axe a4) 0.2208071130318372)

        (= (value_pickaxe p0) 0.8897274539133438)
		(= (value_pickaxe p1) 0.7932502018670579)
		(= (value_pickaxe p2) 0.3737651248491317)

        (= (value_shovel s0) 3.2216708819657267)
		(= (value_shovel s1) 5.877948594317947)
		(= (value_shovel s2) 7.495141217474814)

        (= (value_hoe h0) 15.758026557314846)
		(= (value_hoe h1) 26.093504537771363)
		(= (value_hoe h2) 20.99853937486387)

        (= (trees_in_map) 22)

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

