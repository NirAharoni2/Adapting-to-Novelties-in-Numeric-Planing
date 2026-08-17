;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_86)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.751560784866321)

        (= (sled_supplies s0) 6.701644053838154)

        (= (factor_value f0) 0.7510858679596533)
		(= (factor_value f1) 0.6181819145420184)

        (= (dummy_1_value d1_0) 0.7028619720431712)
		(= (dummy_1_value d1_1) 0.9266557267922759)
		(= (dummy_1_value d1_2) 0.8128490922614646)
		(= (dummy_1_value d1_3) 0.8027050975438519)
		(= (dummy_1_value d1_4) 0.5801453524315199)

        (= (dummy_2_value d2_0) 6.951414167697378)
		(= (dummy_2_value d2_1) 8.933986333179647)
		(= (dummy_2_value d2_2) 5.746627125197582)
		(= (dummy_2_value d2_3) 1.8796466822123827)

        (= (dummy_3_value d3_0) 47.386158162377846)

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

