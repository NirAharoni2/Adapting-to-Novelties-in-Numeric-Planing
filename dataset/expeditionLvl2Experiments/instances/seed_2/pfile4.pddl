;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_4)
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

        (= (sled_capacity s0) 7.247377298204)

        (= (sled_supplies s0) 0.7701496701965174)

        (= (factor_value f0) 0.6039092372689636)
		(= (factor_value f1) 0.7559458291776413)
		(= (factor_value f2) 0.9670771795668893)
		(= (factor_value f3) 0.8116325433629361)
		(= (factor_value f4) 0.5376876845370226)

        (= (dummy_1_value d1_0) 0.9101999973560084)
		(= (dummy_1_value d1_1) 0.8629746437386491)
		(= (dummy_1_value d1_2) 0.9538268104756604)

        (= (dummy_2_value d2_0) 2.7226245997370575)
		(= (dummy_2_value d2_1) 7.7030445184961875)
		(= (dummy_2_value d2_2) 1.5288300675879016)
		(= (dummy_2_value d2_3) 6.876189346910947)

        (= (dummy_3_value d3_0) 28.036873501377784)
		(= (dummy_3_value d3_1) 23.435036395231542)
		(= (dummy_3_value d3_2) 87.67362597337555)

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

