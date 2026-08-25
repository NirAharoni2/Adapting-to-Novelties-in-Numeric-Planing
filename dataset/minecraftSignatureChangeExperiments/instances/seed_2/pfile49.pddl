;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_52)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.4564757032604131)
		(= (value_axe a1) 0.6385669201383777)
		(= (value_axe a2) 0.7411615489787298)

        (= (value_pickaxe p0) 0.2729792847890131)
		(= (value_pickaxe p1) 0.6168426486613052)
		(= (value_pickaxe p2) 0.021754846054324317)

        (= (value_shovel s0) 3.5170795183059136)
		(= (value_shovel s1) 1.8108144785013818)

        (= (value_hoe h0) 10.713494505141458)
		(= (value_hoe h1) 17.300934116929746)

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

