;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_76)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.48133721556166453)
		(= (value_axe a1) 0.6049188521439977)
		(= (value_axe a2) 0.7043472376823212)
		(= (value_axe a3) 0.8930990988219595)

        (= (value_pickaxe p0) 0.8341596990833096)
		(= (value_pickaxe p1) 0.9449348989568954)

        (= (value_shovel s0) 3.5233016178548606)
		(= (value_shovel s1) 2.9522884761383223)

        (= (value_hoe h0) 24.841406290152)
		(= (value_hoe h1) 14.964897264584136)
		(= (value_hoe h2) 27.75674288758365)
		(= (value_hoe h3) 29.07506483177239)
		(= (value_hoe h4) 26.197618103044476)

        (= (trees_in_map) 26)

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

