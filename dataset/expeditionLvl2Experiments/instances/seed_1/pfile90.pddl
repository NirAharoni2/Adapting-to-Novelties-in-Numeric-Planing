;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_90)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.291487592797235)

        (= (sled_supplies s0) 8.095660417856863)

        (= (factor_value f0) 0.6601258530642524)
		(= (factor_value f1) 0.601881279463889)
		(= (factor_value f2) 0.9356253120812733)

        (= (dummy_1_value d1_0) 0.5478716732336668)
		(= (dummy_1_value d1_1) 0.501977666498315)
		(= (dummy_1_value d1_2) 0.6755246970551003)
		(= (dummy_1_value d1_3) 0.9042900964909862)
		(= (dummy_1_value d1_4) 0.9759957349048611)

        (= (dummy_2_value d2_0) 2.0026067480633136)
		(= (dummy_2_value d2_1) 8.117669348380986)
		(= (dummy_2_value d2_2) 8.361751592790228)
		(= (dummy_2_value d2_3) 2.6145869477183306)
		(= (dummy_2_value d2_4) 4.063059704737788)

        (= (dummy_3_value d3_0) 38.18345940309469)
		(= (dummy_3_value d3_1) 33.22909461466012)

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

