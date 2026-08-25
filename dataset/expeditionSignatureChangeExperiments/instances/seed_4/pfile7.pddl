;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_7)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.813776087051338)

        (= (sled_supplies s0) 0.8272778740744879)

        (= (factor_value f0) 0.8264837289377058)
		(= (factor_value f1) 0.9354490555482273)

        (= (dummy_1_value d1_0) 0.858676235171878)
		(= (dummy_1_value d1_1) 0.5202516298528315)
		(= (dummy_1_value d1_2) 0.6937363449219935)

        (= (dummy_2_value d2_0) 4.870968087749866)

        (= (dummy_3_value d3_0) 93.06284287204457)
		(= (dummy_3_value d3_1) 57.658179566833546)
		(= (dummy_3_value d3_2) 94.4697561527279)

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

