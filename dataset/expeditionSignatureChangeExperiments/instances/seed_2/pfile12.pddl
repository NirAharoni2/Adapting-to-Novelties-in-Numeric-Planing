;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_12)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 114.1466489424721)

        (= (sled_supplies s0) 3.4780926510371346)

        (= (factor_value f0) 4.374212521467227)
		(= (factor_value f1) 5.3578139896447485)
		(= (factor_value f2) 8.792140761748223)
		(= (factor_value f3) 7.475921419205305)

        (= (dummy_1_value d1_0) 0.8639567673368378)

        (= (dummy_2_value d2_0) 4.770693685028588)
		(= (dummy_2_value d2_1) 5.429093983203546)
		(= (dummy_2_value d2_2) 7.122012210420317)
		(= (dummy_2_value d2_3) 4.552046396468924)

        (= (dummy_3_value d3_0) 16.483552667425258)
		(= (dummy_3_value d3_1) 60.05901103974229)
		(= (dummy_3_value d3_2) 55.30754883838988)

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

