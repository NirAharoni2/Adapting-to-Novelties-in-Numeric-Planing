;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_94)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.770084592242651)

        (= (sled_supplies s0) 1.955482178637795)

        (= (factor_value f0) 0.6710874655743875)
		(= (factor_value f1) 0.5882794795595739)
		(= (factor_value f2) 0.6129573177307894)

        (= (dummy_1_value d1_0) 0.9369391834663756)
		(= (dummy_1_value d1_1) 0.5653196404489294)
		(= (dummy_1_value d1_2) 0.7772917721589938)

        (= (dummy_2_value d2_0) 6.6223733438214785)
		(= (dummy_2_value d2_1) 5.683550690218247)
		(= (dummy_2_value d2_2) 5.521278171933533)
		(= (dummy_2_value d2_3) 4.577392388844972)
		(= (dummy_2_value d2_4) 2.724629289913095)

        (= (dummy_3_value d3_0) 82.28003883550363)
		(= (dummy_3_value d3_1) 89.78674155022422)
		(= (dummy_3_value d3_2) 56.8301180591641)

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

