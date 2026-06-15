;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_92)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.4326008034664359)
		(= (value_axe a1) 0.6764704235662143)
		(= (value_axe a2) 0.10820716828261956)

        (= (value_pickaxe p0) 0.07974065522281792)
		(= (value_pickaxe p1) 0.2200851338504145)

        (= (value_shovel s0) 1.3906500354408275)
		(= (value_shovel s1) 1.7479720454224181)
		(= (value_shovel s2) 5.496828478148581)
		(= (value_shovel s3) 4.917690341036942)
		(= (value_shovel s4) 6.257655204422704)

        (= (value_hoe h0) 16.867713682780945)
		(= (value_hoe h1) 18.527636760283166)

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

