;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_85)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) 2.0)
		(= (x b1) 6.0)
		(= (y b1) 0.0)

		(= (d p0) 126.0)
		(= (d p1) 119.0)

        (= (dummy_1_d d1_0) -54.0)
		(= (dummy_1_d d1_1) 96.0)
		(= (dummy_1_d d1_2) -147.0)
		(= (dummy_1_d d1_3) 33.0)

        (= (dummy_2_d d2_0) -5.0)

        (= (dummy_3_d d3_0) 751.0)
		(= (dummy_3_d d3_1) -1474.0)
		(= (dummy_3_d d3_2) -894.0)
		(= (dummy_3_d d3_3) -503.0)
		(= (dummy_3_d d3_4) 1077.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

