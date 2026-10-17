;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_40)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 123.65563070570008)

        (= (sled_supplies s0) 1.8749441319550997)

        (= (factor_value f0) 9.281618619586927)
		(= (factor_value f1) 9.43808643944866)
		(= (factor_value f2) 1.2799002463325406)
		(= (factor_value f3) 2.6632266663871063)

        (= (dummy_1_value d1_0) 0.7145095917790348)
		(= (dummy_1_value d1_1) 0.6333492924695983)
		(= (dummy_1_value d1_2) 0.876938829771652)

        (= (dummy_2_value d2_0) 4.35647963737903)
		(= (dummy_2_value d2_1) 7.976672090078979)
		(= (dummy_2_value d2_2) 2.3678095388714926)
		(= (dummy_2_value d2_3) 5.66488570769582)
		(= (dummy_2_value d2_4) 9.774776175853457)

        (= (dummy_3_value d3_0) 70.4985388234282)
		(= (dummy_3_value d3_1) 9.916190565232945)
		(= (dummy_3_value d3_2) 11.987347978937297)
		(= (dummy_3_value d3_3) 64.70732938903058)

        (= (waypoint_supplies w0_0) 1000)
		(= (waypoint_supplies w0_1) 0.0)
		(= (waypoint_supplies w0_2) 0.0)
		(= (waypoint_supplies w0_3) 0.0)
		(= (waypoint_supplies w0_4) 0.0)

		(is_next w0_0 w0_1)
		(is_next w0_1 w0_2)
		(is_next w0_2 w0_3)
		(is_next w0_3 w0_4)
	)
	(:goal
		(and
			(at s0 w0_4)
		)
	)
)

