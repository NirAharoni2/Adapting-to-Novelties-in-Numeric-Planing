;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_87)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.695307391336402)

        (= (sled_supplies s0) 3.0901838833591304)

        (= (factor_value f0) 0.9032325838770652)
		(= (factor_value f1) 0.5209673001958457)
		(= (factor_value f2) 0.9423452488193634)
		(= (factor_value f3) 0.531485887758973)

        (= (dummy_1_value d1_0) 0.5108648112555674)
		(= (dummy_1_value d1_1) 0.6630366437990585)
		(= (dummy_1_value d1_2) 0.9918829094487669)
		(= (dummy_1_value d1_3) 0.9117448185159325)

        (= (dummy_2_value d2_0) 5.263760073419778)

        (= (dummy_3_value d3_0) 89.86142722949339)
		(= (dummy_3_value d3_1) 84.99617727690938)
		(= (dummy_3_value d3_2) 54.17757730572057)
		(= (dummy_3_value d3_3) 24.428928489139025)

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

