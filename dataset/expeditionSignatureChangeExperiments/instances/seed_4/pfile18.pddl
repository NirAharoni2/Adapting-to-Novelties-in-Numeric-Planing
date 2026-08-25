;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_18)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 10.817073280914983)

        (= (sled_supplies s0) 0.5798312592725768)

        (= (factor_value f0) 0.944828988075519)
		(= (factor_value f1) 0.7574183694695067)
		(= (factor_value f2) 0.7686764399787065)

        (= (dummy_1_value d1_0) 0.6514298687189675)
		(= (dummy_1_value d1_1) 0.7003100601152408)
		(= (dummy_1_value d1_2) 0.5851318329081145)
		(= (dummy_1_value d1_3) 0.5309604608382518)

        (= (dummy_2_value d2_0) 9.824093559775225)
		(= (dummy_2_value d2_1) 3.5074028737088105)
		(= (dummy_2_value d2_2) 7.085914754651457)
		(= (dummy_2_value d2_3) 3.735978518730772)
		(= (dummy_2_value d2_4) 8.105177055095268)

        (= (dummy_3_value d3_0) 9.496157679786748)

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

