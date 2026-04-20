;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_39)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.4409276176736161)
		(= (value_axe a1) 0.9794976672024415)
		(= (value_axe a2) 0.08362895458129038)
		(= (value_axe a3) 0.9925199988892578)

        (= (value_pickaxe p0) 0.7421761359856888)
		(= (value_pickaxe p1) 0.7936306255394677)

        (= (trees_in_map) 39)

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

