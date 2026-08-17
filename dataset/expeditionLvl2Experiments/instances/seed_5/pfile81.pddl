;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_81)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.80386455433338)

        (= (sled_supplies s0) 7.327204749969858)

        (= (factor_value f0) 0.6096338468263827)

        (= (dummy_1_value d1_0) 0.9945405563488072)

        (= (dummy_2_value d2_0) 2.653108628229771)
		(= (dummy_2_value d2_1) 6.226779668384843)
		(= (dummy_2_value d2_2) 6.796020819750439)
		(= (dummy_2_value d2_3) 3.5867571554010134)
		(= (dummy_2_value d2_4) 9.000905989350224)

        (= (dummy_3_value d3_0) 61.38974133219608)
		(= (dummy_3_value d3_1) 71.28832288785645)
		(= (dummy_3_value d3_2) 14.71684122022094)

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

