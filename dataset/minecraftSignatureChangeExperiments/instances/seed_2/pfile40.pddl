;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_40)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.5114701513985233)
		(= (value_axe a1) 0.26830755526735584)
		(= (value_axe a2) 0.04703663248124712)
		(= (value_axe a3) 0.5562952634332866)
		(= (value_axe a4) 0.7637618060415053)

        (= (value_pickaxe p0) 0.686331658978618)
		(= (value_pickaxe p1) 0.09732289318720644)
		(= (value_pickaxe p2) 0.3595582850802208)

        (= (value_shovel s0) 5.263556297789809)
		(= (value_shovel s1) 3.4367611374250666)

        (= (value_hoe h0) 25.90029581598683)
		(= (value_hoe h1) 28.81055781779732)
		(= (value_hoe h2) 15.510812670722967)
		(= (value_hoe h3) 19.563428744070425)

        (= (trees_in_map) 29)

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

