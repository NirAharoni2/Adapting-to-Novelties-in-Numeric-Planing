;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.07665163703845079)
		(= (value_axe a1) 0.5502747537472402)
		(= (value_axe a2) 0.5659665173422043)

        (= (value_pickaxe p0) 0.9522462283575805)
		(= (value_pickaxe p1) 0.36489180394089316)
		(= (value_pickaxe p2) 0.2955526081058891)
		(= (value_pickaxe p3) 0.5342941874643207)

        (= (value_shovel s0) 1.8002127126185947)
		(= (value_shovel s1) 7.277315906735355)

        (= (value_hoe h0) 12.154613701554338)
		(= (value_hoe h1) 10.915034685696385)
		(= (value_hoe h2) 15.914758743700643)
		(= (value_hoe h3) 22.273538510562723)
		(= (value_hoe h4) 10.290963067365158)

        (= (trees_in_map) 33)

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

