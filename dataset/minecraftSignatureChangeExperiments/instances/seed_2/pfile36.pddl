;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_36)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.5333601851455942)
		(= (value_axe a1) 0.7923907915066433)
		(= (value_axe a2) 0.6645470361623147)

        (= (value_pickaxe p0) 0.8226396995825307)
		(= (value_pickaxe p1) 0.07199639394396495)
		(= (value_pickaxe p2) 0.4706396969667934)
		(= (value_pickaxe p3) 0.7116848753262763)

        (= (value_shovel s0) 2.97838210358155)
		(= (value_shovel s1) 5.019629358671456)

        (= (value_hoe h0) 14.244747482319418)
		(= (value_hoe h1) 13.245548249314831)
		(= (value_hoe h2) 25.423728432610865)
		(= (value_hoe h3) 24.42185909522354)

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

