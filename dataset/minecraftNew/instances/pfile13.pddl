;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_13)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.7986808913629477)
		(= (value_axe a1) 0.9885039313598524)
		(= (value_axe a2) 0.1033108911736067)

        (= (value_pickaxe p0) 0.726339758330154)
		(= (value_pickaxe p1) 0.6649183228271611)
		(= (value_pickaxe p2) 0.64119342337726)
		(= (value_pickaxe p3) 0.366642426360159)
		(= (value_pickaxe p4) 0.4682476936633345)

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

