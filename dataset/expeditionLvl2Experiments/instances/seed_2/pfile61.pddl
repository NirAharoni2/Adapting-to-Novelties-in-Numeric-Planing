;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_61)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.271394005440996)

        (= (sled_supplies s0) 7.898619760166195)

        (= (factor_value f0) 0.6658127370187158)

        (= (dummy_1_value d1_0) 0.5359384128463944)
		(= (dummy_1_value d1_1) 0.9465981561473312)
		(= (dummy_1_value d1_2) 0.6394983223925809)
		(= (dummy_1_value d1_3) 0.8793284147065518)

        (= (dummy_2_value d2_0) 8.785123207012655)
		(= (dummy_2_value d2_1) 2.512509194348641)
		(= (dummy_2_value d2_2) 2.745704477723148)
		(= (dummy_2_value d2_3) 4.803444601022837)

        (= (dummy_3_value d3_0) 84.57161872396898)

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

