;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_3)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.858531789236245)

        (= (sled_supplies s0) 4.0465509731576415)

        (= (factor_value f0) 0.9523479922561183)
		(= (factor_value f1) 0.7845537517371617)
		(= (factor_value f2) 0.8569085100870997)

        (= (dummy_1_value d1_0) 0.6055624918377991)

        (= (dummy_2_value d2_0) 8.484471372460188)
		(= (dummy_2_value d2_1) 6.161791171161562)
		(= (dummy_2_value d2_2) 3.5646171578758468)

        (= (dummy_3_value d3_0) 7.282597137377706)
		(= (dummy_3_value d3_1) 85.54030635384534)
		(= (dummy_3_value d3_2) 98.99079547723655)
		(= (dummy_3_value d3_3) 9.763291217863108)
		(= (dummy_3_value d3_4) 80.25893680449269)

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

