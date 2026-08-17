;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_34)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.8286772751765182)
		(= (value_axe a1) 0.0739375940195448)
		(= (value_axe a2) 0.6276503845727209)
		(= (value_axe a3) 0.19607781609707653)

        (= (value_pickaxe p0) 0.15897002922938486)
		(= (value_pickaxe p1) 0.5511156820588294)
		(= (value_pickaxe p2) 0.13988467750612466)

        (= (value_shovel s0) 6.866363826096427)
		(= (value_shovel s1) 4.770850023182327)
		(= (value_shovel s2) 3.4233417668887585)
		(= (value_shovel s3) 7.5712591228165715)
		(= (value_shovel s4) 5.964322772561925)

        (= (value_hoe h0) 10.941098747396607)
		(= (value_hoe h1) 26.733305544339807)
		(= (value_hoe h2) 12.984180680486304)
		(= (value_hoe h3) 13.520414719454713)
		(= (value_hoe h4) 22.498473980617142)

        (= (trees_in_map) 29)

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

