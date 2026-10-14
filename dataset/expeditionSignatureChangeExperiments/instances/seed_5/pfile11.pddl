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

        (= (sled_capacity s0) 46.00996038157225)

        (= (sled_supplies s0) 2.3846784987961844)

        (= (factor_value f0) 2.340725058203645)
		(= (factor_value f1) 2.985796358792411)
		(= (factor_value f2) 9.727300813884701)
		(= (factor_value f3) 3.859827284518825)
		(= (factor_value f4) 9.615277057619013)

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

