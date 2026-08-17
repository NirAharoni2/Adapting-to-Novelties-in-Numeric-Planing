;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_61)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.039154270360279075)
		(= (value_axe a1) 0.881929624934933)
		(= (value_axe a2) 0.9813839712607589)
		(= (value_axe a3) 0.1336737452579092)

        (= (value_pickaxe p0) 0.656265539183129)
		(= (value_pickaxe p1) 0.18085502027519718)
		(= (value_pickaxe p2) 0.19192764405671792)
		(= (value_pickaxe p3) 0.8814865783668213)

        (= (value_shovel s0) 5.98070611583503)
		(= (value_shovel s1) 1.4982513038541736)
		(= (value_shovel s2) 3.143024737947123)
		(= (value_shovel s3) 6.991977196730424)
		(= (value_shovel s4) 5.488623233601151)

        (= (value_hoe h0) 16.12820348786994)
		(= (value_hoe h1) 21.05808614456532)
		(= (value_hoe h2) 25.958363350328213)
		(= (value_hoe h3) 22.710753008748732)
		(= (value_hoe h4) 15.11597995223671)

        (= (trees_in_map) 25)

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

