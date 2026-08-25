;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_40)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.09721494364270677)
		(= (value_axe a1) 0.23302138445901877)
		(= (value_axe a2) 0.8972637826839018)
		(= (value_axe a3) 0.6373965057315354)

        (= (value_pickaxe p0) 0.19418998939166587)
		(= (value_pickaxe p1) 0.4412637956129585)
		(= (value_pickaxe p2) 0.9746849536511646)
		(= (value_pickaxe p3) 0.3101299556563347)

        (= (value_shovel s0) 4.6477099585484485)
		(= (value_shovel s1) 1.3253063266702951)
		(= (value_shovel s2) 7.601100839810908)

        (= (value_hoe h0) 27.52458358632709)
		(= (value_hoe h1) 23.672299020859953)
		(= (value_hoe h2) 13.570251498051418)
		(= (value_hoe h3) 28.347783274279493)

        (= (trees_in_map) 31)

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

