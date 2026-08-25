;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_31)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.9443599300422307)
		(= (value_axe a1) 0.19063501802075944)
		(= (value_axe a2) 0.3482339842993124)
		(= (value_axe a3) 0.9815619776733239)

        (= (value_pickaxe p0) 0.21261043862400464)
		(= (value_pickaxe p1) 0.02695510624183406)
		(= (value_pickaxe p2) 0.19113683921748736)
		(= (value_pickaxe p3) 0.8254130981116877)
		(= (value_pickaxe p4) 0.7312872433782822)

        (= (value_shovel s0) 7.569035141076001)
		(= (value_shovel s1) 4.48131700298328)
		(= (value_shovel s2) 1.2894871805210069)
		(= (value_shovel s3) 3.143630076964235)

        (= (value_hoe h0) 24.38412380250791)
		(= (value_hoe h1) 17.85650479253158)

        (= (trees_in_map) 24)

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

