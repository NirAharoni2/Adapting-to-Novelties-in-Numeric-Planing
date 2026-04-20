;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_1)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.7766830424671577)
		(= (value_axe a1) 0.12167246639849905)
		(= (value_axe a2) 0.503522492044801)

        (= (value_pickaxe p0) 0.2961381780154334)
		(= (value_pickaxe p1) 0.05222734070841484)
		(= (value_pickaxe p2) 0.9133012244847653)
		(= (value_pickaxe p3) 0.9202267311145734)
		(= (value_pickaxe p4) 0.08831192868979187)

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

