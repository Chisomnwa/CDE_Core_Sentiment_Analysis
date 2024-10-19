sql =''' SELECT * FROM sentiment_table
        ORDER BY num_appeared DESC
        LIMIT 1;
    '''