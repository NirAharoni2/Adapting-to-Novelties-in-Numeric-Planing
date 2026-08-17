;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_73)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.513309529464211)

        (= (sled_supplies s0) 1.5262009083004098)

        (= (factor_value f0) 0.9234161501699698)

        (= (dummy_1_value d1_0) 0.7225719225386092)
		(= (dummy_1_value d1_1) 0.7609841242813429)

        (= (dummy_2_value d2_0) 7.0240847039616)
		(= (dummy_2_value d2_1) 2.228735078708545)
		(= (dummy_2_value d2_2) 7.559251347412466)
		(= (dummy_2_value d2_3) 8.199050692668877)
		(= (dummy_2_value d2_4) 8.736101781307678)

        (= (dummy_3_value d3_0) 28.86109342220521)

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

