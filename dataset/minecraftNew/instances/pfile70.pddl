;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_70)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.4149066249083616)
		(= (value_axe a1) 0.09365409126339708)
		(= (value_axe a2) 0.3070633093675821)

        (= (value_pickaxe p0) 0.46842301086554394)
		(= (value_pickaxe p1) 0.4861897552562717)
		(= (value_pickaxe p2) 0.9937895880850617)
		(= (value_pickaxe p3) 0.9624786416143511)
		(= (value_pickaxe p4) 0.7404757759686176)

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

