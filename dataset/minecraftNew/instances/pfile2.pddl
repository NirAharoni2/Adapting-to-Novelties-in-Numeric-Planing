;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_2)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.9837465830699208)
		(= (value_axe a1) 0.42606516530183114)
		(= (value_axe a2) 0.5875816082721859)
		(= (value_axe a3) 0.19152772603881651)

        (= (value_pickaxe p0) 0.265506158168467)
		(= (value_pickaxe p1) 0.4970927209119095)

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

