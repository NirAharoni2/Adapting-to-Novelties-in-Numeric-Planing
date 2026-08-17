;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.726735173960937)

        (= (sled_supplies s0) 3.685155847047368)

        (= (factor_value f0) 0.6131679322325073)
		(= (factor_value f1) 0.6457472908481016)
		(= (factor_value f2) 0.9862273138325607)
		(= (factor_value f3) 0.6898902668948901)
		(= (factor_value f4) 0.9805695483645966)

        (= (dummy_1_value d1_0) 0.9568736335598952)
		(= (dummy_1_value d1_1) 0.7979049891008083)
		(= (dummy_1_value d1_2) 0.6299123270102822)
		(= (dummy_1_value d1_3) 0.99049028121234)
		(= (dummy_1_value d1_4) 0.7481527524108749)

        (= (dummy_2_value d2_0) 4.739425436981334)
		(= (dummy_2_value d2_1) 3.8723729365064536)

        (= (dummy_3_value d3_0) 98.4433747935396)
		(= (dummy_3_value d3_1) 49.683717042393305)
		(= (dummy_3_value d3_2) 29.353436873747782)

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

