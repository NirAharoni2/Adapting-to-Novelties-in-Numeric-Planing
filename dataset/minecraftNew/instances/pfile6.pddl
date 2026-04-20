;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.9303992230134445)
		(= (value_axe a1) 0.1741938854098093)
		(= (value_axe a2) 0.9956341023058366)
		(= (value_axe a3) 0.6954873731859815)
		(= (value_axe a4) 0.3147058426978475)

        (= (value_pickaxe p0) 0.4287958331609306)
		(= (value_pickaxe p1) 0.06473940377008702)
		(= (value_pickaxe p2) 0.35988656110294004)
		(= (value_pickaxe p3) 0.6496359435164419)

        (= (trees_in_map) 31)

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

