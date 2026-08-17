;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_45)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 9.0)
		(= (y b0) -8.0)
		(= (x b1) 3.0)
		(= (y b1) -6.0)

		(= (d p0) 95.0)
		(= (d p1) 74.0)

        (= (dummy_1_d d1_0) -28.0)
		(= (dummy_1_d d1_1) 109.0)
		(= (dummy_1_d d1_2) 57.0)
		(= (dummy_1_d d1_3) -32.0)
		(= (dummy_1_d d1_4) -139.0)

        (= (dummy_2_d d2_0) 8.0)
		(= (dummy_2_d d2_1) 10.0)
		(= (dummy_2_d d2_2) 14.0)

        (= (dummy_3_d d3_0) -1319.0)
		(= (dummy_3_d d3_1) -1442.0)
		(= (dummy_3_d d3_2) 763.0)
		(= (dummy_3_d d3_3) -465.0)
		(= (dummy_3_d d3_4) 466.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

