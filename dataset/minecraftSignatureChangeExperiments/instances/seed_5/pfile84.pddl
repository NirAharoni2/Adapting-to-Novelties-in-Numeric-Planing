;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_84)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.6908181328626464)
		(= (value_axe a1) 0.07906430659275732)
		(= (value_axe a2) 0.18671077184241003)
		(= (value_axe a3) 0.46575871706455496)
		(= (value_axe a4) 0.5452507931742775)

        (= (value_pickaxe p0) 0.09517691788277993)
		(= (value_pickaxe p1) 0.7416969212876847)
		(= (value_pickaxe p2) 0.3465807033152799)

        (= (value_shovel s0) 4.326041106987951)
		(= (value_shovel s1) 4.653919107774082)
		(= (value_shovel s2) 6.871609845016002)
		(= (value_shovel s3) 3.1148451126849857)
		(= (value_shovel s4) 4.918351539645498)

        (= (value_hoe h0) 22.10913332695271)
		(= (value_hoe h1) 23.107800302896226)
		(= (value_hoe h2) 16.24406760617319)
		(= (value_hoe h3) 15.581993585549391)

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

