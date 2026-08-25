;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_45)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.7423618569766837)
		(= (value_axe a1) 0.6688526752209519)
		(= (value_axe a2) 0.2543391629457543)
		(= (value_axe a3) 0.6215646914709174)
		(= (value_axe a4) 0.18693901511158784)

        (= (value_pickaxe p0) 0.6469808633327414)
		(= (value_pickaxe p1) 0.1760320279441695)
		(= (value_pickaxe p2) 0.017655078020003656)
		(= (value_pickaxe p3) 0.9553825235838884)
		(= (value_pickaxe p4) 0.869866449923097)

        (= (value_shovel s0) 3.1338099012305465)
		(= (value_shovel s1) 1.3144598008266781)
		(= (value_shovel s2) 6.730509330543886)
		(= (value_shovel s3) 6.399267452803532)

        (= (value_hoe h0) 13.096263753674975)
		(= (value_hoe h1) 26.341986556059105)

        (= (trees_in_map) 34)

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

