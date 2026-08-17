;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_43)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.729286676970867)

        (= (sled_supplies s0) 9.62745718301589)

        (= (factor_value f0) 0.5943828364044861)
		(= (factor_value f1) 0.7692353146716912)
		(= (factor_value f2) 0.9710980449972915)
		(= (factor_value f3) 0.6613479000624071)

        (= (dummy_1_value d1_0) 0.8048055178362874)
		(= (dummy_1_value d1_1) 0.9072204841866917)

        (= (dummy_2_value d2_0) 6.203794379705438)
		(= (dummy_2_value d2_1) 4.8675756706582325)

        (= (dummy_3_value d3_0) 74.56637170520561)
		(= (dummy_3_value d3_1) 37.07173437971385)

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

