;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_77)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.778798250787128)

        (= (sled_supplies s0) 5.126383307319307)

        (= (factor_value f0) 0.5814751269872966)
		(= (factor_value f1) 0.6814331542056814)
		(= (factor_value f2) 0.557462647132635)
		(= (factor_value f3) 0.7342622589218677)

        (= (dummy_1_value d1_0) 0.5359849146770629)
		(= (dummy_1_value d1_1) 0.7310051184998998)

        (= (dummy_2_value d2_0) 7.013556393378001)
		(= (dummy_2_value d2_1) 4.240566332147901)

        (= (dummy_3_value d3_0) 61.121526260063874)
		(= (dummy_3_value d3_1) 98.10240571923016)
		(= (dummy_3_value d3_2) 25.16238358065072)
		(= (dummy_3_value d3_3) 52.029137221559715)

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

