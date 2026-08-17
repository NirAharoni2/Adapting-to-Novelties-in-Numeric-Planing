;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_33)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.7184769263967773)
		(= (value_axe a1) 0.3054958810525106)
		(= (value_axe a2) 0.10638543387964139)
		(= (value_axe a3) 0.3970078551871341)
		(= (value_axe a4) 0.49236150032733617)

        (= (value_pickaxe p0) 0.09997421469778434)
		(= (value_pickaxe p1) 0.18676126036778584)
		(= (value_pickaxe p2) 0.055343052815480465)

        (= (value_shovel s0) 5.182595000885307)
		(= (value_shovel s1) 7.222132863603413)

        (= (value_hoe h0) 14.331155819192436)
		(= (value_hoe h1) 10.694268717536396)
		(= (value_hoe h2) 24.078471888383657)

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

