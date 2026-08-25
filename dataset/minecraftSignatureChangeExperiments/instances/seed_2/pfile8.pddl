;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_8)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.09345365062973265)
		(= (value_axe a1) 0.6873954558097267)
		(= (value_axe a2) 0.8384014301154695)
		(= (value_axe a3) 0.02420382535324883)
		(= (value_axe a4) 0.7884093364683019)

        (= (value_pickaxe p0) 0.9480942422713076)
		(= (value_pickaxe p1) 0.518286105878321)
		(= (value_pickaxe p2) 0.781059625692312)

        (= (value_shovel s0) 4.40845212045028)
		(= (value_shovel s1) 3.2957256883889894)
		(= (value_shovel s2) 7.121102889762209)
		(= (value_shovel s3) 3.387357255918346)
		(= (value_shovel s4) 2.832861782927405)

        (= (value_hoe h0) 29.41367230113678)
		(= (value_hoe h1) 23.06629255682725)
		(= (value_hoe h2) 23.989476197652536)

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

