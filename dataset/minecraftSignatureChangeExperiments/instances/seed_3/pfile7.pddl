;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_7)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.5484304676868622)
		(= (value_axe a1) 0.01145748636421906)
		(= (value_axe a2) 0.415210343803882)
		(= (value_axe a3) 0.5799652137970656)

        (= (value_pickaxe p0) 0.020052890304599336)
		(= (value_pickaxe p1) 0.6157979413062568)
		(= (value_pickaxe p2) 0.6321805352961154)
		(= (value_pickaxe p3) 0.060080510627723016)
		(= (value_pickaxe p4) 0.627341109010956)

        (= (value_shovel s0) 4.2637530078769545)
		(= (value_shovel s1) 5.75496978626676)
		(= (value_shovel s2) 3.4680388812873315)
		(= (value_shovel s3) 5.948651745561293)

        (= (value_hoe h0) 24.760685785040685)
		(= (value_hoe h1) 10.443649379816197)
		(= (value_hoe h2) 11.211536072915946)
		(= (value_hoe h3) 23.520406189747536)

        (= (trees_in_map) 31)

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

