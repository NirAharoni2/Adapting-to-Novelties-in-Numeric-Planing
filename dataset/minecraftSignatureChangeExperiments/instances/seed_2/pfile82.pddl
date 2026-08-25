;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_82)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.32185540470413654)
		(= (value_axe a1) 0.5300655850450525)
		(= (value_axe a2) 0.246007853037293)

        (= (value_pickaxe p0) 0.2623672324616466)
		(= (value_pickaxe p1) 0.8108262512983284)

        (= (value_shovel s0) 3.395383987454676)
		(= (value_shovel s1) 6.047071713106837)
		(= (value_shovel s2) 5.756583191011786)
		(= (value_shovel s3) 4.257834532103594)
		(= (value_shovel s4) 6.498445335647759)

        (= (value_hoe h0) 16.60791956640587)
		(= (value_hoe h1) 10.072478445501345)

        (= (trees_in_map) 20)

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

