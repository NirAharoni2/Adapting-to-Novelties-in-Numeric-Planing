;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_48)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.5063173505975552)
		(= (value_axe a1) 0.5862676586235078)
		(= (value_axe a2) 0.5499944669940258)
		(= (value_axe a3) 0.9765797032009982)

        (= (value_pickaxe p0) 0.16297123769479815)
		(= (value_pickaxe p1) 0.6366644129872755)
		(= (value_pickaxe p2) 0.9945310087813287)
		(= (value_pickaxe p3) 0.736135286551329)
		(= (value_pickaxe p4) 0.5659085142333045)

        (= (value_shovel s0) 3.5785420681988924)
		(= (value_shovel s1) 3.8149721843815207)
		(= (value_shovel s2) 7.5556616456280965)
		(= (value_shovel s3) 7.267313147016568)

        (= (value_hoe h0) 23.393525781978774)
		(= (value_hoe h1) 27.974957837235458)
		(= (value_hoe h2) 28.5032729938673)

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

