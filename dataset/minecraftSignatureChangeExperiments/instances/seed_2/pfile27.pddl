;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_27)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.7665750494136913)
		(= (value_axe a1) 0.48984110071871945)
		(= (value_axe a2) 0.8713710182669668)
		(= (value_axe a3) 0.5446312042894883)
		(= (value_axe a4) 0.6215305819923882)

        (= (value_pickaxe p0) 0.09054749897122816)
		(= (value_pickaxe p1) 0.5104275683953344)
		(= (value_pickaxe p2) 0.6646775900195062)

        (= (value_shovel s0) 4.469970628041853)
		(= (value_shovel s1) 3.8090658179338233)

        (= (value_hoe h0) 23.83097908714059)
		(= (value_hoe h1) 13.388059051601555)
		(= (value_hoe h2) 17.719920653815088)
		(= (value_hoe h3) 19.052921987497413)
		(= (value_hoe h4) 27.577026800551167)

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

