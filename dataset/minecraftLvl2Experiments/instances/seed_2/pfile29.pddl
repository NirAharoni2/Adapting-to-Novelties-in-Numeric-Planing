;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_29)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.06462096781629334)
		(= (value_axe a1) 0.1394975450543059)
		(= (value_axe a2) 0.030373045344900595)
		(= (value_axe a3) 0.6957525052291073)
		(= (value_axe a4) 0.5421545211993815)

        (= (value_pickaxe p0) 0.04834412932103149)
		(= (value_pickaxe p1) 0.5461555713308865)

        (= (value_shovel s0) 1.0435794573600592)
		(= (value_shovel s1) 6.699677427561539)
		(= (value_shovel s2) 3.3631067333588)
		(= (value_shovel s3) 4.69932792431505)
		(= (value_shovel s4) 2.6693951709550867)

        (= (value_hoe h0) 17.430428786889152)
		(= (value_hoe h1) 10.030156542623567)
		(= (value_hoe h2) 20.80267893024094)

        (= (trees_in_map) 27)

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

