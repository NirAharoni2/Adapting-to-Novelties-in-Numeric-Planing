;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_2)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) 1.0)
		(= (y b0) -4.0)
		(= (x b1) 5.0)
		(= (y b1) 6.0)

		(= (d p0) 15.0)
		(= (d p1) -104.0)

        (= (dummy_1_d d1_0) -121.0)

        (= (dummy_2_d d2_0) 12.0)
		(= (dummy_2_d d2_1) 13.0)
		(= (dummy_2_d d2_2) -13.0)
		(= (dummy_2_d d2_3) 3.0)
		(= (dummy_2_d d2_4) 7.0)

        (= (dummy_3_d d3_0) 1221.0)
		(= (dummy_3_d d3_1) 161.0)
		(= (dummy_3_d d3_2) -1248.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

