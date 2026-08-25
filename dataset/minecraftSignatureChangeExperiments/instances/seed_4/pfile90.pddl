;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_90)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.5375014385918123)
		(= (value_axe a1) 0.15251472721141057)
		(= (value_axe a2) 0.47893121954931606)
		(= (value_axe a3) 0.26491793102804717)
		(= (value_axe a4) 0.8455343097808541)

        (= (value_pickaxe p0) 0.7793078488969987)
		(= (value_pickaxe p1) 0.07527289424699257)
		(= (value_pickaxe p2) 0.13718385037665903)
		(= (value_pickaxe p3) 0.6733384589238088)
		(= (value_pickaxe p4) 0.5032265389310168)

        (= (value_shovel s0) 3.1834908017101586)
		(= (value_shovel s1) 4.417008140471893)
		(= (value_shovel s2) 1.9712686070286587)
		(= (value_shovel s3) 4.281038740722446)

        (= (value_hoe h0) 21.34588839964619)
		(= (value_hoe h1) 28.693668002732842)
		(= (value_hoe h2) 22.248584022206042)

        (= (trees_in_map) 38)

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

