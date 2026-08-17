;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.3390956478509337)
		(= (value_axe a1) 0.21302979638081376)
		(= (value_axe a2) 0.6744550697237632)

        (= (value_pickaxe p0) 0.8377010701539643)
		(= (value_pickaxe p1) 0.9321874718936273)
		(= (value_pickaxe p2) 0.3438498147908198)

        (= (value_shovel s0) 7.176752417265245)
		(= (value_shovel s1) 5.809771275075602)
		(= (value_shovel s2) 4.391491058287459)
		(= (value_shovel s3) 7.898557608780584)

        (= (value_hoe h0) 14.69280869742077)
		(= (value_hoe h1) 24.50930372482545)
		(= (value_hoe h2) 11.693604608329684)

        (= (trees_in_map) 25)

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

