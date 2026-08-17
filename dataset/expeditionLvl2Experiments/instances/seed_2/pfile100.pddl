;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_100)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.055221170444584)

        (= (sled_supplies s0) 3.6053890394795154)

        (= (factor_value f0) 0.7139076303183076)
		(= (factor_value f1) 0.6411022913916018)
		(= (factor_value f2) 0.6364061075494881)
		(= (factor_value f3) 0.5143192919671502)
		(= (factor_value f4) 0.9486478555841686)

        (= (dummy_1_value d1_0) 0.6285198713467905)
		(= (dummy_1_value d1_1) 0.887536000012275)
		(= (dummy_1_value d1_2) 0.7815638947197074)

        (= (dummy_2_value d2_0) 1.450183096103422)

        (= (dummy_3_value d3_0) 96.1958053670228)
		(= (dummy_3_value d3_1) 66.88211730449727)
		(= (dummy_3_value d3_2) 99.28490568182508)

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

