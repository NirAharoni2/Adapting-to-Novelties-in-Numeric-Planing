;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_23)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.8405951371414486)
		(= (value_axe a1) 0.367630081822915)

        (= (value_pickaxe p0) 0.5929909120204357)
		(= (value_pickaxe p1) 0.8732489390695677)
		(= (value_pickaxe p2) 0.4303556001506572)
		(= (value_pickaxe p3) 0.019168250151475275)
		(= (value_pickaxe p4) 0.32820496015307477)

        (= (trees_in_map) 27)

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

