;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_43)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.24263823206242952)
		(= (value_axe a1) 0.550156661792993)

        (= (value_pickaxe p0) 0.10294530545383851)
		(= (value_pickaxe p1) 0.6921629041828815)
		(= (value_pickaxe p2) 0.07999380305558346)
		(= (value_pickaxe p3) 0.8528859189228613)

        (= (value_shovel s0) 5.074031707357666)
		(= (value_shovel s1) 2.5487564531490285)

        (= (value_hoe h0) 20.51146336159687)
		(= (value_hoe h1) 29.925811667403728)

        (= (trees_in_map) 32)

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

