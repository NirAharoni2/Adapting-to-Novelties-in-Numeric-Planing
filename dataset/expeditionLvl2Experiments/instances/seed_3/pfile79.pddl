;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_79)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.479603609264482)

        (= (sled_supplies s0) 6.616660052234688)

        (= (factor_value f0) 0.6776804785723256)

        (= (dummy_1_value d1_0) 0.8072510591113999)
		(= (dummy_1_value d1_1) 0.6141898608335128)

        (= (dummy_2_value d2_0) 8.946719368010015)
		(= (dummy_2_value d2_1) 1.0006648019203985)
		(= (dummy_2_value d2_2) 6.838318574533597)
		(= (dummy_2_value d2_3) 5.370646330473311)
		(= (dummy_2_value d2_4) 2.7550523149737565)

        (= (dummy_3_value d3_0) 57.448671731306916)
		(= (dummy_3_value d3_1) 47.941129736601425)
		(= (dummy_3_value d3_2) 96.24934692804014)

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

