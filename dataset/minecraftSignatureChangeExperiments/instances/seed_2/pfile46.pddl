;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_46)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.46087192213608286)
		(= (value_axe a1) 0.952204517542569)
		(= (value_axe a2) 0.7548022297147202)
		(= (value_axe a3) 0.4198204659650966)

        (= (value_pickaxe p0) 0.5053767165880478)
		(= (value_pickaxe p1) 0.8978462237543561)
		(= (value_pickaxe p2) 0.7470187468095937)
		(= (value_pickaxe p3) 0.6530698288985713)
		(= (value_pickaxe p4) 0.9588396876069631)

        (= (value_shovel s0) 1.820179164622587)
		(= (value_shovel s1) 5.185995312260314)
		(= (value_shovel s2) 5.369586487479493)

        (= (value_hoe h0) 19.09240709098487)
		(= (value_hoe h1) 29.26394697158116)
		(= (value_hoe h2) 29.349442546520656)

        (= (trees_in_map) 32)

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

