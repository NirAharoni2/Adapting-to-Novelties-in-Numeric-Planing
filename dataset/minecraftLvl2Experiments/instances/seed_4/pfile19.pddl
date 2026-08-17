;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_19)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.5113065024295181)
		(= (value_axe a1) 0.4581954402758929)
		(= (value_axe a2) 0.9650608300255153)
		(= (value_axe a3) 0.6305755296346852)
		(= (value_axe a4) 0.34740404489490095)

        (= (value_pickaxe p0) 0.796238916458464)
		(= (value_pickaxe p1) 0.910254106606091)
		(= (value_pickaxe p2) 0.7555637900375013)
		(= (value_pickaxe p3) 0.4834539310795183)
		(= (value_pickaxe p4) 0.639938830794724)

        (= (value_shovel s0) 4.337916063129506)
		(= (value_shovel s1) 5.225400749187414)

        (= (value_hoe h0) 11.325749032009696)
		(= (value_hoe h1) 28.479999935381034)
		(= (value_hoe h2) 11.381577297927972)

        (= (trees_in_map) 24)

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

