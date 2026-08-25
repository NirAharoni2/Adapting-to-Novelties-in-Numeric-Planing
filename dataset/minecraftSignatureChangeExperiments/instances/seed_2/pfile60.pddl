;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_60)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.04774572956843126)
		(= (value_axe a1) 0.10696690822890864)
		(= (value_axe a2) 0.01824293705279667)
		(= (value_axe a3) 0.11706754376559458)
		(= (value_axe a4) 0.8111720625987121)

        (= (value_pickaxe p0) 0.3532004248700098)
		(= (value_pickaxe p1) 0.2405869985953285)

        (= (value_shovel s0) 3.961583305795741)
		(= (value_shovel s1) 1.304254770120678)
		(= (value_shovel s2) 2.1714632564686305)
		(= (value_shovel s3) 1.9153808543547681)

        (= (value_hoe h0) 24.56528646213524)
		(= (value_hoe h1) 28.803505327037957)
		(= (value_hoe h2) 17.83722343310827)

        (= (trees_in_map) 23)

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

