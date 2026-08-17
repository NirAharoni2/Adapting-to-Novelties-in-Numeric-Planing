;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_28)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) -5.0)
		(= (x b1) 1.0)
		(= (y b1) -7.0)

		(= (d p0) -67.0)
		(= (d p1) -8.0)

        (= (dummy_1_d d1_0) -149.0)
		(= (dummy_1_d d1_1) -123.0)
		(= (dummy_1_d d1_2) -104.0)
		(= (dummy_1_d d1_3) 108.0)
		(= (dummy_1_d d1_4) 55.0)

        (= (dummy_2_d d2_0) -15.0)
		(= (dummy_2_d d2_1) 12.0)

        (= (dummy_3_d d3_0) -585.0)
		(= (dummy_3_d d3_1) 293.0)
		(= (dummy_3_d d3_2) 174.0)
		(= (dummy_3_d d3_3) 259.0)
		(= (dummy_3_d d3_4) 493.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

