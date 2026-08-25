;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_29)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.6313733930002206)
		(= (value_axe a1) 0.7359485326925168)
		(= (value_axe a2) 0.7700411499053581)

        (= (value_pickaxe p0) 0.8437828076204883)
		(= (value_pickaxe p1) 0.9862894713141716)
		(= (value_pickaxe p2) 0.1623559904983245)
		(= (value_pickaxe p3) 0.7554274738950512)

        (= (value_shovel s0) 1.346593690608608)
		(= (value_shovel s1) 1.374149029404323)

        (= (value_hoe h0) 13.21115682782498)
		(= (value_hoe h1) 28.794256445561825)
		(= (value_hoe h2) 28.57608751319156)
		(= (value_hoe h3) 23.464097515279313)

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

