;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_39)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.804604187573389)

        (= (sled_supplies s0) 2.0645907358053126)

        (= (factor_value f0) 0.8541499338594363)
		(= (factor_value f1) 0.8610205717685331)
		(= (factor_value f2) 0.5863199360929415)

        (= (dummy_1_value d1_0) 0.6319871578801797)
		(= (dummy_1_value d1_1) 0.65629667628684)

        (= (dummy_2_value d2_0) 9.248071027132106)
		(= (dummy_2_value d2_1) 3.692717014414014)

        (= (dummy_3_value d3_0) 71.72411586027016)
		(= (dummy_3_value d3_1) 96.99847814986153)

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

