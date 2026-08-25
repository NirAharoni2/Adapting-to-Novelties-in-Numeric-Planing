;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_22)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.3080792802644603)
		(= (value_axe a1) 0.23291382156000595)
		(= (value_axe a2) 0.4575382140375891)

        (= (value_pickaxe p0) 0.23210957290703327)
		(= (value_pickaxe p1) 0.27748653338305496)
		(= (value_pickaxe p2) 0.9577546426051324)
		(= (value_pickaxe p3) 0.11196606364382466)
		(= (value_pickaxe p4) 0.8186163737430314)

        (= (value_shovel s0) 3.6544986962987482)
		(= (value_shovel s1) 3.552223656296851)
		(= (value_shovel s2) 3.228740584049945)

        (= (value_hoe h0) 11.547711243437753)
		(= (value_hoe h1) 19.147604012891694)

        (= (trees_in_map) 25)

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

