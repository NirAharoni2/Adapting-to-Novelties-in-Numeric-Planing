;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_52)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.6819593646214782)
		(= (value_axe a1) 0.4979613788804289)
		(= (value_axe a2) 0.39308270153520275)
		(= (value_axe a3) 0.6061112720808137)
		(= (value_axe a4) 0.4791908048527663)

        (= (value_pickaxe p0) 0.14913352121684276)
		(= (value_pickaxe p1) 0.6136359788878962)

        (= (value_shovel s0) 5.916717599394921)
		(= (value_shovel s1) 2.1698639813452836)
		(= (value_shovel s2) 2.8032667928653074)
		(= (value_shovel s3) 6.202239388343922)
		(= (value_shovel s4) 7.546044766489064)

        (= (value_hoe h0) 20.734312279312693)
		(= (value_hoe h1) 27.378619386624774)
		(= (value_hoe h2) 22.67324639782386)
		(= (value_hoe h3) 26.204050264477083)

        (= (trees_in_map) 26)

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

