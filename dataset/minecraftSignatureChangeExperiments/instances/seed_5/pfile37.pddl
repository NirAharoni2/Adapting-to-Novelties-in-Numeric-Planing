;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_37)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.6779294239509799)
		(= (value_axe a1) 0.610241184473614)
		(= (value_axe a2) 0.5135914339336511)

        (= (value_pickaxe p0) 0.5011859199114332)
		(= (value_pickaxe p1) 0.5456550099204999)
		(= (value_pickaxe p2) 0.6906104639105847)
		(= (value_pickaxe p3) 0.4497497825502409)
		(= (value_pickaxe p4) 0.7876144708359853)

        (= (value_shovel s0) 5.055666137242456)
		(= (value_shovel s1) 7.543342335892056)

        (= (value_hoe h0) 21.14928404542443)
		(= (value_hoe h1) 11.22263350139834)
		(= (value_hoe h2) 12.932509004873307)
		(= (value_hoe h3) 18.333509767472385)

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

