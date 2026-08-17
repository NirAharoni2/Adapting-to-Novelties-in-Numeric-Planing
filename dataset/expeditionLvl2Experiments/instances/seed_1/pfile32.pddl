;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_32)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.20157382862014)

        (= (sled_supplies s0) 3.0375054665724868)

        (= (factor_value f0) 0.5428926397183522)
		(= (factor_value f1) 0.5170966605085692)
		(= (factor_value f2) 0.6921181010386444)
		(= (factor_value f3) 0.8663030872531501)

        (= (dummy_1_value d1_0) 0.6566033465237238)

        (= (dummy_2_value d2_0) 2.1700440968774277)
		(= (dummy_2_value d2_1) 8.151149998766545)
		(= (dummy_2_value d2_2) 8.262274437056664)
		(= (dummy_2_value d2_3) 8.702738188953148)
		(= (dummy_2_value d2_4) 3.7337002593765116)

        (= (dummy_3_value d3_0) 43.05820574087838)
		(= (dummy_3_value d3_1) 25.29360943117109)
		(= (dummy_3_value d3_2) 56.1605718086341)

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

