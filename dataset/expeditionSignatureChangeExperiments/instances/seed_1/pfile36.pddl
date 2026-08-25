;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_36)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 12.990390006214952)

        (= (sled_supplies s0) 2.4353790684198184)

        (= (factor_value f0) 0.9327466595875464)
		(= (factor_value f1) 0.9463966870129917)
		(= (factor_value f2) 0.7127220386720958)
		(= (factor_value f3) 0.8378001688687513)
		(= (factor_value f4) 0.7722381573640651)

        (= (dummy_1_value d1_0) 0.9723676189363951)
		(= (dummy_1_value d1_1) 0.8990803714176945)
		(= (dummy_1_value d1_2) 0.862909250232179)

        (= (dummy_2_value d2_0) 8.32629137163772)
		(= (dummy_2_value d2_1) 9.983439570566446)
		(= (dummy_2_value d2_2) 3.3090506692662345)
		(= (dummy_2_value d2_3) 2.8122726758906142)

        (= (dummy_3_value d3_0) 74.93149853249523)
		(= (dummy_3_value d3_1) 77.26291855194374)
		(= (dummy_3_value d3_2) 51.9140959734553)

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

