;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_55)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.6120458139259322)
		(= (value_axe a1) 0.22152129960368494)
		(= (value_axe a2) 0.9490212551961823)
		(= (value_axe a3) 0.11102495123278444)
		(= (value_axe a4) 0.06404097169045042)

        (= (value_pickaxe p0) 0.6840484260894295)
		(= (value_pickaxe p1) 0.09280566902857246)

        (= (value_shovel s0) 1.4678426981758168)
		(= (value_shovel s1) 4.222049937597691)
		(= (value_shovel s2) 5.542111923333841)
		(= (value_shovel s3) 7.244484832791728)
		(= (value_shovel s4) 6.0460547571896734)

        (= (value_hoe h0) 11.387166523401449)
		(= (value_hoe h1) 22.862359237639325)
		(= (value_hoe h2) 26.87261406680301)
		(= (value_hoe h3) 12.41047149973167)
		(= (value_hoe h4) 25.0899845816649)

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

