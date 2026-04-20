;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_79)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.46672636438930803)
		(= (value_axe a1) 0.6661527123419115)
		(= (value_axe a2) 0.5319874631861912)
		(= (value_axe a3) 0.971660317705554)
		(= (value_axe a4) 0.20198824415133543)

        (= (value_pickaxe p0) 0.3034582131782143)
		(= (value_pickaxe p1) 0.4053043153650273)

        (= (trees_in_map) 30)

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

