;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_78)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.05745011413879031)
		(= (value_axe a1) 0.33622567930316427)

        (= (value_pickaxe p0) 0.4762193224942096)
		(= (value_pickaxe p1) 0.8943877790820348)
		(= (value_pickaxe p2) 0.5687572195385514)
		(= (value_pickaxe p3) 0.4280107034295554)

        (= (value_shovel s0) 7.81520978326423)
		(= (value_shovel s1) 6.135808007301875)
		(= (value_shovel s2) 7.283769684199671)
		(= (value_shovel s3) 6.669712200291305)
		(= (value_shovel s4) 7.880054787483036)

        (= (value_hoe h0) 23.672720692703408)
		(= (value_hoe h1) 25.613079654488985)

        (= (trees_in_map) 36)

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

