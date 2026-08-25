;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_41)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.405754458188712)

        (= (sled_supplies s0) 0.9454925195225955)

        (= (factor_value f0) 0.6431863150953827)
		(= (factor_value f1) 0.96335619205507)
		(= (factor_value f2) 0.9058141526551752)

        (= (dummy_1_value d1_0) 0.5787633378555757)
		(= (dummy_1_value d1_1) 0.8893303282111525)
		(= (dummy_1_value d1_2) 0.9677147527495946)
		(= (dummy_1_value d1_3) 0.9810259348227672)
		(= (dummy_1_value d1_4) 0.8459595656960255)

        (= (dummy_2_value d2_0) 4.513476393782023)

        (= (dummy_3_value d3_0) 54.833987651666014)
		(= (dummy_3_value d3_1) 65.42653782817632)
		(= (dummy_3_value d3_2) 61.69569089194186)

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

