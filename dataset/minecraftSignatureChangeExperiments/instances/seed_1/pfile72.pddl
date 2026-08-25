;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_72)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.7093308876738105)
		(= (value_axe a1) 0.3477203659126339)
		(= (value_axe a2) 0.5353633261603788)
		(= (value_axe a3) 0.08858336146387946)

        (= (value_pickaxe p0) 0.8273532189349466)
		(= (value_pickaxe p1) 0.2088351376755534)
		(= (value_pickaxe p2) 0.4634527491174777)

        (= (value_shovel s0) 3.0320705518408477)
		(= (value_shovel s1) 6.671420673686954)
		(= (value_shovel s2) 5.148163100490525)

        (= (value_hoe h0) 22.303698714469725)
		(= (value_hoe h1) 25.09497127586499)
		(= (value_hoe h2) 15.097931268566835)
		(= (value_hoe h3) 11.16496340216167)

        (= (trees_in_map) 30)

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

