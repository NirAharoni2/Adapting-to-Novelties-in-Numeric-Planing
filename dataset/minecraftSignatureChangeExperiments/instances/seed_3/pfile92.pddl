;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_92)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.5297651489101203)
		(= (value_axe a1) 0.8251751557123034)
		(= (value_axe a2) 0.25177091820236375)
		(= (value_axe a3) 0.8893606699646728)

        (= (value_pickaxe p0) 0.5349492022620636)
		(= (value_pickaxe p1) 0.7444132677558528)
		(= (value_pickaxe p2) 0.7770746337723156)
		(= (value_pickaxe p3) 0.7421147539606329)
		(= (value_pickaxe p4) 0.8473710699786549)

        (= (value_shovel s0) 7.989391722442016)
		(= (value_shovel s1) 1.610781713883737)

        (= (value_hoe h0) 23.818956326364987)
		(= (value_hoe h1) 26.260567379741993)
		(= (value_hoe h2) 25.655944711406185)
		(= (value_hoe h3) 17.914971964293848)
		(= (value_hoe h4) 13.287842601896227)

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

