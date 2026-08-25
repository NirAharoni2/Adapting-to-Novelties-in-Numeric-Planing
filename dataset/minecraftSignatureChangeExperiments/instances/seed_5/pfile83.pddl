;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_83)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.5918695672193283)
		(= (value_axe a1) 0.19868276438166144)
		(= (value_axe a2) 0.9100507200177237)
		(= (value_axe a3) 0.5641531519744843)

        (= (value_pickaxe p0) 0.08913186362698455)
		(= (value_pickaxe p1) 0.236955644229628)
		(= (value_pickaxe p2) 0.3828841497330878)
		(= (value_pickaxe p3) 0.6465418456818764)
		(= (value_pickaxe p4) 0.2177144831547344)

        (= (value_shovel s0) 6.891213395553612)
		(= (value_shovel s1) 1.9705877709780006)
		(= (value_shovel s2) 6.3178399685672515)

        (= (value_hoe h0) 13.385629671643404)
		(= (value_hoe h1) 22.119049071073626)

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

