;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_60)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.221670732963437)

        (= (sled_supplies s0) 2.120081373114303)

        (= (factor_value f0) 0.7225503062291289)
		(= (factor_value f1) 0.8337083150494426)
		(= (factor_value f2) 0.6633106456221913)

        (= (dummy_1_value d1_0) 0.6122927607637036)

        (= (dummy_2_value d2_0) 5.071822897563899)

        (= (dummy_3_value d3_0) 80.22037759103547)
		(= (dummy_3_value d3_1) 35.185303906150885)

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

