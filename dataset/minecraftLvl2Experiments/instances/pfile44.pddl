;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_44)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.6436618566225477)
		(= (value_axe a1) 0.7967907582496082)
		(= (value_axe a2) 0.3220958024802494)
		(= (value_axe a3) 0.38203675665601444)

        (= (value_pickaxe p0) 0.17519497918808247)
		(= (value_pickaxe p1) 0.9061523611328476)
		(= (value_pickaxe p2) 0.3384720557196439)
		(= (value_pickaxe p3) 0.21705483976220274)

        (= (value_shovel s0) 3.3744888177923835)
		(= (value_shovel s1) 5.258800589128464)
		(= (value_shovel s2) 2.6934368278756096)
		(= (value_shovel s3) 4.126575952087369)

        (= (value_hoe h0) 11.406065167862545)
		(= (value_hoe h1) 27.236875163083763)
		(= (value_hoe h2) 11.0269599471317)
		(= (value_hoe h3) 29.21238739155068)

        (= (trees_in_map) 28)

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

