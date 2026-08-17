;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_45)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.4700339098604508)
		(= (value_axe a1) 0.1881304787322059)
		(= (value_axe a2) 0.4353667815731105)

        (= (value_pickaxe p0) 0.7748240919363906)
		(= (value_pickaxe p1) 0.35321347229684574)
		(= (value_pickaxe p2) 0.6324631568227453)
		(= (value_pickaxe p3) 0.031410223404023)
		(= (value_pickaxe p4) 0.39466394202069077)

        (= (value_shovel s0) 6.850204305316065)
		(= (value_shovel s1) 3.9856847980300394)
		(= (value_shovel s2) 7.518862060308216)
		(= (value_shovel s3) 1.168776130743454)

        (= (value_hoe h0) 28.200543306447734)
		(= (value_hoe h1) 19.545485462087314)
		(= (value_hoe h2) 15.233757449146442)
		(= (value_hoe h3) 15.411270744670581)
		(= (value_hoe h4) 19.326781438607885)

        (= (trees_in_map) 34)

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

