$ ->
  selectableDays = $(@).data('selectable-days')
  $(".datepicker").datepicker(
    dateFormat: 'yy-mm-dd'
    beforeShowDay: (date) ->
      return [true, ""]
  )
