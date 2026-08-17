;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_75)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.252113475948399)

        (= (sled_supplies s0) 3.4023308057003456)

        (= (factor_value f0) 0.8913986177851547)
		(= (factor_value f1) 0.6978742991073462)
		(= (factor_value f2) 0.5821960650474056)
		(= (factor_value f3) 0.9271810101808768)
		(= (factor_value f4) 0.8572816518431552)

        (= (dummy_1_value d1_0) 0.9798009565526633)
		(= (dummy_1_value d1_1) 0.9535722046216827)
		(= (dummy_1_value d1_2) 0.6309579499085203)
		(= (dummy_1_value d1_3) 0.9957008480201516)

        (= (dummy_2_value d2_0) 9.43058373627583)
		(= (dummy_2_value d2_1) 6.625931260101117)

        (= (dummy_3_value d3_0) 24.541920990097886)
		(= (dummy_3_value d3_1) 67.82908204189482)
		(= (dummy_3_value d3_2) 12.75005268808264)

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

