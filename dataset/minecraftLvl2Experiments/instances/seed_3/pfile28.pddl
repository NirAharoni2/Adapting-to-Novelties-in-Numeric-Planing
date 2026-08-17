;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_28)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.36959983245777295)
		(= (value_axe a1) 0.29301729820733846)
		(= (value_axe a2) 0.8422971651193235)

        (= (value_pickaxe p0) 0.44483660080432974)
		(= (value_pickaxe p1) 0.4072271581688731)
		(= (value_pickaxe p2) 0.8145115851100259)

        (= (value_shovel s0) 3.2116324966270082)
		(= (value_shovel s1) 7.343146764348424)
		(= (value_shovel s2) 3.167235049869815)

        (= (value_hoe h0) 19.956337061073878)
		(= (value_hoe h1) 20.58156724074932)
		(= (value_hoe h2) 24.13885448864155)
		(= (value_hoe h3) 27.914040514828383)

        (= (trees_in_map) 35)

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

