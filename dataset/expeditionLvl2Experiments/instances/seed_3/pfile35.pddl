;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_35)
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

        (= (sled_capacity s0) 7.471101103665057)

        (= (sled_supplies s0) 0.13536827810881366)

        (= (factor_value f0) 0.5955719906951937)
		(= (factor_value f1) 0.8118855802327547)
		(= (factor_value f2) 0.7046363744295787)

        (= (dummy_1_value d1_0) 0.9468553691113679)
		(= (dummy_1_value d1_1) 0.9915317945442397)

        (= (dummy_2_value d2_0) 5.224531434295451)
		(= (dummy_2_value d2_1) 6.288146997114597)

        (= (dummy_3_value d3_0) 4.4615884267712005)
		(= (dummy_3_value d3_1) 95.79062970344232)

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

