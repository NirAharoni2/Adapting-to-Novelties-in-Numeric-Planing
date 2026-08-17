;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_2)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.726674674182415)

        (= (sled_supplies s0) 3.942781559068033)

        (= (factor_value f0) 0.9842783871689511)
		(= (factor_value f1) 0.5984395219630163)

        (= (dummy_1_value d1_0) 0.9825481954728874)
		(= (dummy_1_value d1_1) 0.6916117455765192)

        (= (dummy_2_value d2_0) 1.1941318754159613)
		(= (dummy_2_value d2_1) 4.734160404604706)
		(= (dummy_2_value d2_2) 9.422133902544656)

        (= (dummy_3_value d3_0) 27.117381956047055)
		(= (dummy_3_value d3_1) 33.85359423484318)
		(= (dummy_3_value d3_2) 81.92263078471935)

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

