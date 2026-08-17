;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_96)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.9200176139384253)
		(= (value_axe a1) 0.702177088299548)
		(= (value_axe a2) 0.5754299045221104)
		(= (value_axe a3) 0.8979261636878972)

        (= (value_pickaxe p0) 0.5662307051861706)
		(= (value_pickaxe p1) 0.9753486835906346)
		(= (value_pickaxe p2) 0.4897901689929207)
		(= (value_pickaxe p3) 0.3057845783436903)

        (= (value_shovel s0) 6.591916100145197)
		(= (value_shovel s1) 4.117786284662726)
		(= (value_shovel s2) 3.205490547070107)
		(= (value_shovel s3) 1.8740060683082902)
		(= (value_shovel s4) 3.404765550454118)

        (= (value_hoe h0) 25.17968990841002)
		(= (value_hoe h1) 20.14496143693823)
		(= (value_hoe h2) 18.04450757071824)
		(= (value_hoe h3) 19.173357446431723)
		(= (value_hoe h4) 25.7022010241784)

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

