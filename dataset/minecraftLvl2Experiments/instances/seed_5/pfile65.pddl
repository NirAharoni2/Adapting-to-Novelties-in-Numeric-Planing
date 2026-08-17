;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_65)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.7715062012202782)
		(= (value_axe a1) 0.8370974538712358)
		(= (value_axe a2) 0.04317248036987775)

        (= (value_pickaxe p0) 0.5352339148675826)
		(= (value_pickaxe p1) 0.47859534599838516)
		(= (value_pickaxe p2) 0.11949586672248524)
		(= (value_pickaxe p3) 0.20257403827447729)
		(= (value_pickaxe p4) 0.9743554455851601)

        (= (value_shovel s0) 6.968474779658879)
		(= (value_shovel s1) 2.66723852352409)

        (= (value_hoe h0) 26.582418441684585)
		(= (value_hoe h1) 23.019851759407544)
		(= (value_hoe h2) 17.698068830019327)
		(= (value_hoe h3) 22.894642183694643)
		(= (value_hoe h4) 14.580132610439893)

        (= (trees_in_map) 28)

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

