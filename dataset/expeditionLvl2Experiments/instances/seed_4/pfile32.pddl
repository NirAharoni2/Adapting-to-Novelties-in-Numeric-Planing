;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_32)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.942242104555575)

        (= (sled_supplies s0) 1.6101711651910289)

        (= (factor_value f0) 0.7262220985091941)
		(= (factor_value f1) 0.9903144258352279)
		(= (factor_value f2) 0.999141118122044)

        (= (dummy_1_value d1_0) 0.7900784445710729)
		(= (dummy_1_value d1_1) 0.5129429086320075)

        (= (dummy_2_value d2_0) 6.021674470092924)
		(= (dummy_2_value d2_1) 9.70266125161148)
		(= (dummy_2_value d2_2) 3.3533617378704323)
		(= (dummy_2_value d2_3) 6.283645966309755)
		(= (dummy_2_value d2_4) 6.162775907893153)

        (= (dummy_3_value d3_0) 60.229811940707215)
		(= (dummy_3_value d3_1) 70.01834742513304)
		(= (dummy_3_value d3_2) 94.4119951496924)

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

