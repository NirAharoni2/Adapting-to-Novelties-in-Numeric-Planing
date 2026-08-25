;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_76)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.4862604394019967)
		(= (value_axe a1) 0.6559492265531636)
		(= (value_axe a2) 0.3191236012785764)

        (= (value_pickaxe p0) 0.8128490974002938)
		(= (value_pickaxe p1) 0.4592404592180518)
		(= (value_pickaxe p2) 0.4295445714823233)
		(= (value_pickaxe p3) 0.7256906550451453)
		(= (value_pickaxe p4) 0.6667740862748028)

        (= (value_shovel s0) 5.967705993673105)
		(= (value_shovel s1) 7.124590185830025)
		(= (value_shovel s2) 6.663709743836952)
		(= (value_shovel s3) 3.8530058106265344)
		(= (value_shovel s4) 5.506731139554945)

        (= (value_hoe h0) 27.27477891557641)
		(= (value_hoe h1) 11.114104208587971)

        (= (trees_in_map) 36)

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

