;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_97)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.9214206485149385)
		(= (value_axe a1) 0.3673469472548714)
		(= (value_axe a2) 0.6833150550590368)

        (= (value_pickaxe p0) 0.7032674421396791)
		(= (value_pickaxe p1) 0.8675643358257283)

        (= (trees_in_map) 36)

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

