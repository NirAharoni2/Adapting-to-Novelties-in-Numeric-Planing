;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_30)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 132.9804983966522)

        (= (sled_supplies s0) 4.52523497317834)

        (= (factor_value f0) 3.411758525120864)
		(= (factor_value f1) 3.3385846225502336)
		(= (factor_value f2) 6.720475056676757)
		(= (factor_value f3) 3.2088327224676076)

        (= (dummy_1_value d1_0) 0.7939625081984922)
		(= (dummy_1_value d1_1) 0.893982095981)

        (= (dummy_2_value d2_0) 2.577488818366324)
		(= (dummy_2_value d2_1) 4.856264847875943)
		(= (dummy_2_value d2_2) 7.282507166581737)

        (= (dummy_3_value d3_0) 64.19973530393096)
		(= (dummy_3_value d3_1) 96.945096880344)

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

