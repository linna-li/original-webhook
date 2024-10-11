# The name of this view in Looker is "Test Table"
view: test_table {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `orders.test_table` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Test Column" in Explore.

  dimension: test_column {
    type: number
    sql: ${TABLE}.test_column ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_test_column {
    type: sum
    sql: ${test_column} ;;  }
  measure: average_test_column {
    type: average
    sql: ${test_column} ;;  }
  measure: count {
    type: count
  }
}
