;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_28)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.702891902404374)
		(= (value_axe a1) 0.4493881435694821)
		(= (value_axe a2) 0.6688404197317077)

        (= (value_pickaxe p0) 0.19736112176941356)
		(= (value_pickaxe p1) 0.5261906981730404)
		(= (value_pickaxe p2) 0.6785481750157671)
		(= (value_pickaxe p3) 0.5793461980362942)
		(= (value_pickaxe p4) 0.9703126430902784)

        (= (value_shovel s0) 3.3520714121216324)
		(= (value_shovel s1) 5.351373822174937)
		(= (value_shovel s2) 7.8214036087454515)
		(= (value_shovel s3) 5.896526241938503)
		(= (value_shovel s4) 7.772465052019165)

        (= (value_hoe h0) 11.354914530024235)
		(= (value_hoe h1) 29.752669445539762)
		(= (value_hoe h2) 14.952627515845805)
		(= (value_hoe h3) 29.34008757006309)

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

