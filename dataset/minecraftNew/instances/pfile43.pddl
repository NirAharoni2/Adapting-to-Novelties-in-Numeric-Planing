;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_43)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.19035292109430602)
		(= (value_axe a1) 0.4927085691851554)
		(= (value_axe a2) 0.4367020862368577)
		(= (value_axe a3) 0.1823156043784413)

        (= (value_pickaxe p0) 0.5162972963026515)
		(= (value_pickaxe p1) 0.8472601248458008)
		(= (value_pickaxe p2) 0.9566099628888413)
		(= (value_pickaxe p3) 0.849286559387597)
		(= (value_pickaxe p4) 0.7172951641266943)

        (= (trees_in_map) 21)

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

